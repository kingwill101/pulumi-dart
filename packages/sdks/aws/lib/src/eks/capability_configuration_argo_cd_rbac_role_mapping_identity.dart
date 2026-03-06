// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapabilityConfigurationArgoCdRbacRoleMappingIdentity {
  /// Identity ID.
  final pulumi.Input<String> id;
  /// Identity type. Valid values: `SSO_USER`, `SSO_GROUP`.
  final pulumi.Input<String> type;

  /// Creates a new [CapabilityConfigurationArgoCdRbacRoleMappingIdentity].
  /// [id] Identity ID.
  /// [type] Identity type. Valid values: `SSO_USER`, `SSO_GROUP`.
  const CapabilityConfigurationArgoCdRbacRoleMappingIdentity({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory CapabilityConfigurationArgoCdRbacRoleMappingIdentity.fromMap(Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdRbacRoleMappingIdentity(
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

