// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainAdvancedSecurityOption {
  final pulumi.Input<bool> anonymousAuthEnabled;
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  /// Whether the internal user database is enabled.
  final pulumi.Input<bool> internalUserDatabaseEnabled;

  /// Creates a new [GetDomainAdvancedSecurityOption].
  /// [anonymousAuthEnabled] Required.
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [internalUserDatabaseEnabled] Whether the internal user database is enabled.
  const GetDomainAdvancedSecurityOption({
    required this.anonymousAuthEnabled,
    required this.enabled,
    required this.internalUserDatabaseEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anonymousAuthEnabled': anonymousAuthEnabled,
      'enabled': enabled,
      'internalUserDatabaseEnabled': internalUserDatabaseEnabled,
    };
  }

  factory GetDomainAdvancedSecurityOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOption(
      anonymousAuthEnabled: pulumi.Input.fromValue(map['anonymousAuthEnabled'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      internalUserDatabaseEnabled: pulumi.Input.fromValue(map['internalUserDatabaseEnabled'] as bool),
    );
  }
}

