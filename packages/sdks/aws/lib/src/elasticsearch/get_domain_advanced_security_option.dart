// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainAdvancedSecurityOption {
  /// Whether node to node encryption is enabled.
  final pulumi.Input<bool> enabled;
  /// Whether the internal user database is enabled.
  final pulumi.Input<bool> internalUserDatabaseEnabled;

  /// Creates a new [GetDomainAdvancedSecurityOption].
  /// [enabled] Whether node to node encryption is enabled.
  /// [internalUserDatabaseEnabled] Whether the internal user database is enabled.
  GetDomainAdvancedSecurityOption({
    required this.enabled,
    required this.internalUserDatabaseEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'internalUserDatabaseEnabled': internalUserDatabaseEnabled,
    };
  }

  factory GetDomainAdvancedSecurityOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      internalUserDatabaseEnabled: pulumi.Input.fromValue(map['internalUserDatabaseEnabled'] as bool),
    );
  }
}

