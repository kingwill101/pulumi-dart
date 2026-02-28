// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the legacy Attribute Based Access Control authorization mode.
class LegacyAbacResponseContainerV1beta1 {
  /// Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  final bool enabled;

  /// Creates a new [LegacyAbacResponseContainerV1beta1].
  /// [enabled] Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  LegacyAbacResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory LegacyAbacResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LegacyAbacResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
