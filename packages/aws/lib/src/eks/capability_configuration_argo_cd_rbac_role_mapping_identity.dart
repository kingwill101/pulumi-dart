// ignore_for_file: unused_element, unnecessary_cast

class CapabilityConfigurationArgoCdRbacRoleMappingIdentity {
  /// Identity ID.
  final String id;

  /// Identity type. Valid values: `SSO_USER`, `SSO_GROUP`.
  final String type;

  /// Creates a new [CapabilityConfigurationArgoCdRbacRoleMappingIdentity].
  /// [id] Identity ID.
  /// [type] Identity type. Valid values: `SSO_USER`, `SSO_GROUP`.
  CapabilityConfigurationArgoCdRbacRoleMappingIdentity({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'type': type};
  }

  factory CapabilityConfigurationArgoCdRbacRoleMappingIdentity.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapabilityConfigurationArgoCdRbacRoleMappingIdentity(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}
