// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_advanced_security_option_jwt_option.dart';

class GetDomainAdvancedSecurityOption {
  /// Whether Anonymous auth is enabled.
  final pulumi.Input<bool> anonymousAuthEnabled;
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  /// Whether the internal user database is enabled.
  final pulumi.Input<bool> internalUserDatabaseEnabled;
  /// Block for JWT authentication.
  final pulumi.Input<List<GetDomainAdvancedSecurityOptionJwtOption>> jwtOptions;

  /// Creates a new [GetDomainAdvancedSecurityOption].
  /// [anonymousAuthEnabled] Whether Anonymous auth is enabled.
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [internalUserDatabaseEnabled] Whether the internal user database is enabled.
  /// [jwtOptions] Block for JWT authentication.
  const GetDomainAdvancedSecurityOption({
    required this.anonymousAuthEnabled,
    required this.enabled,
    required this.internalUserDatabaseEnabled,
    required this.jwtOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousAuthEnabled': anonymousAuthEnabled,
      'enabled': enabled,
      'internalUserDatabaseEnabled': internalUserDatabaseEnabled,
      'jwtOptions': pulumi.Input.mapInputValue<List<GetDomainAdvancedSecurityOptionJwtOption>, List<Map<String, dynamic>>>(jwtOptions, (value) => pulumi.Input.encodeList<GetDomainAdvancedSecurityOptionJwtOption, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDomainAdvancedSecurityOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOption(
      anonymousAuthEnabled: pulumi.Input.fromValue(map['anonymousAuthEnabled'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      internalUserDatabaseEnabled: pulumi.Input.fromValue(map['internalUserDatabaseEnabled'] as bool),
      jwtOptions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDomainAdvancedSecurityOptionJwtOption>(map['jwtOptions']!, (value) => GetDomainAdvancedSecurityOptionJwtOption.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
