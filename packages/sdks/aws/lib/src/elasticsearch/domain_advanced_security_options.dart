// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_advanced_security_options_master_user_options.dart';

class DomainAdvancedSecurityOptions {
  /// Whether advanced security is enabled.
  final pulumi.Input<bool> enabled;
  /// Whether the internal user database is enabled. If not set, defaults to `false` by the AWS API.
  final pulumi.Input<bool>? internalUserDatabaseEnabled;
  /// Configuration block for the main user. Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptionsMasterUserOptions>? masterUserOptions;

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
      'masterUserOptions': ?pulumi.Input.mapOptionalInputValue<DomainAdvancedSecurityOptionsMasterUserOptions, Map<String, dynamic>>(masterUserOptions, (value) => value.toMap()),
    };
  }

  factory DomainAdvancedSecurityOptions.fromMap(Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptions(
      enabled: (map['enabled'] as bool).input(),
      internalUserDatabaseEnabled: map['internalUserDatabaseEnabled'] == null ? null : (map['internalUserDatabaseEnabled'] as bool).input(),
      masterUserOptions: map['masterUserOptions'] == null ? null : (DomainAdvancedSecurityOptionsMasterUserOptions.fromMap((map['masterUserOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

