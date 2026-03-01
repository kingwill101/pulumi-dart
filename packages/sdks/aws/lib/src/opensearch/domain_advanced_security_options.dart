// ignore_for_file: unused_element, unnecessary_cast

import 'domain_advanced_security_options_master_user_options.dart';

class DomainAdvancedSecurityOptions {
  /// Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless `advanced_security_options` are enabled. _Can only be enabled on an existing domain._
  final bool? anonymousAuthEnabled;
  /// Whether advanced security is enabled.
  final bool enabled;
  /// Whether the internal user database is enabled. Default is `false`.
  final bool? internalUserDatabaseEnabled;
  /// Configuration block for the main user. Detailed below.
  final DomainAdvancedSecurityOptionsMasterUserOptions? masterUserOptions;

  /// Creates a new [DomainAdvancedSecurityOptions].
  /// [anonymousAuthEnabled] Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless `advanced_security_options` are enabled. _Can only be enabled on an existing domain._
  /// [enabled] Whether advanced security is enabled.
  /// [internalUserDatabaseEnabled] Whether the internal user database is enabled. Default is `false`.
  /// [masterUserOptions] Configuration block for the main user. Detailed below.
  DomainAdvancedSecurityOptions({
    this.anonymousAuthEnabled,
    required this.enabled,
    this.internalUserDatabaseEnabled,
    this.masterUserOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousAuthEnabled': ?anonymousAuthEnabled,
      'enabled': enabled,
      'internalUserDatabaseEnabled': ?internalUserDatabaseEnabled,
      'masterUserOptions': ?masterUserOptions == null ? null : masterUserOptions!.toMap(),
    };
  }

  factory DomainAdvancedSecurityOptions.fromMap(Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptions(
      anonymousAuthEnabled: map['anonymousAuthEnabled'] == null ? null : map['anonymousAuthEnabled'] as bool,
      enabled: map['enabled'] as bool,
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] == null ? null : map['internalUserDatabaseEnabled'] as bool,
      masterUserOptions: map['masterUserOptions'] == null ? null : DomainAdvancedSecurityOptionsMasterUserOptions.fromMap((map['masterUserOptions'] as Map).cast<String, dynamic>()),
    );
  }
}

