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
    final map = <String, dynamic>{};
    map['id'] = id;
    map['type'] = type;
    return map;
  }

  factory CapabilityConfigurationArgoCdRbacRoleMappingIdentity.fromMap(
      Map<String, dynamic> map) {
    return CapabilityConfigurationArgoCdRbacRoleMappingIdentity(
      id: map['id'] as String,
      type: map['type'] as String,
    );
  }
}
