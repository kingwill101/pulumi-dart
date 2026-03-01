// ignore_for_file: unused_element, unnecessary_cast

import 'domain_advanced_security_options_master_user_options.dart';

class DomainAdvancedSecurityOptions {
  /// Whether advanced security is enabled.
  final bool enabled;
  /// Whether the internal user database is enabled. If not set, defaults to `false` by the AWS API.
  final bool? internalUserDatabaseEnabled;
  /// Configuration block for the main user. Detailed below.
  final DomainAdvancedSecurityOptionsMasterUserOptions? masterUserOptions;

  /// Creates a new [DomainAdvancedSecurityOptions].
  /// [enabled] Whether advanced security is enabled.
  /// [internalUserDatabaseEnabled] Whether the internal user database is enabled. If not set, defaults to `false` by the AWS API.
  /// [masterUserOptions] Configuration block for the main user. Detailed below.
  DomainAdvancedSecurityOptions({
    required this.enabled,
    this.internalUserDatabaseEnabled,
    this.masterUserOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'internalUserDatabaseEnabled': ?internalUserDatabaseEnabled,
      'masterUserOptions': ?masterUserOptions == null ? null : masterUserOptions!.toMap(),
    };
  }

  factory DomainAdvancedSecurityOptions.fromMap(Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptions(
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] == null ? null : map['internalUserDatabaseEnabled'] as bool,
      masterUserOptions: map['masterUserOptions'] == null ? null : DomainAdvancedSecurityOptionsMasterUserOptions.fromMap((map['masterUserOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

