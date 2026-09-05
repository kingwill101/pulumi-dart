// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_advanced_security_options_jwt_options.dart';
import 'domain_advanced_security_options_master_user_options.dart';

class DomainAdvancedSecurityOptions {
  /// Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless `advancedSecurityOptions` are enabled. _Can only be enabled on an existing domain._
  final pulumi.Input<bool?>? anonymousAuthEnabled;
  /// Whether advanced security is enabled.
  final pulumi.Input<bool> enabled;
  /// Whether the internal user database is enabled. Default is `false`.
  final pulumi.Input<bool?>? internalUserDatabaseEnabled;
  /// Configuration block for JWT authentication. Requires OpenSearch 2.11 or later. Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptionsJwtOptions?>? jwtOptions;
  /// Configuration block for the main user. Detailed below.
  final pulumi.Input<DomainAdvancedSecurityOptionsMasterUserOptions?>? masterUserOptions;

  /// Creates a new [DomainAdvancedSecurityOptions].
  /// [anonymousAuthEnabled] Whether Anonymous auth is enabled. Enables fine-grained access control on an existing domain. Ignored unless `advancedSecurityOptions` are enabled. _Can only be enabled on an existing domain._
  /// [enabled] Whether advanced security is enabled.
  /// [internalUserDatabaseEnabled] Whether the internal user database is enabled. Default is `false`.
  /// [jwtOptions] Configuration block for JWT authentication. Requires OpenSearch 2.11 or later. Detailed below.
  /// [masterUserOptions] Configuration block for the main user. Detailed below.
  const DomainAdvancedSecurityOptions({
    this.anonymousAuthEnabled,
    required this.enabled,
    this.internalUserDatabaseEnabled,
    this.jwtOptions,
    this.masterUserOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousAuthEnabled': ?anonymousAuthEnabled,
      'enabled': enabled,
      'internalUserDatabaseEnabled': ?internalUserDatabaseEnabled,
      'jwtOptions': ?pulumi.Input.mapOptionalInputValue<DomainAdvancedSecurityOptionsJwtOptions, Map<String, dynamic>>(jwtOptions, (value) => value.toMap()),
      'masterUserOptions': ?pulumi.Input.mapOptionalInputValue<DomainAdvancedSecurityOptionsMasterUserOptions, Map<String, dynamic>>(masterUserOptions, (value) => value.toMap()),
    };
  }

  factory DomainAdvancedSecurityOptions.fromMap(Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptions(
      anonymousAuthEnabled: (() { final guardedValue = map['anonymousAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      internalUserDatabaseEnabled: (() { final guardedValue = map['internalUserDatabaseEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jwtOptions: (() { final guardedValue = map['jwtOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainAdvancedSecurityOptionsJwtOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      masterUserOptions: (() { final guardedValue = map['masterUserOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainAdvancedSecurityOptionsMasterUserOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
