// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the legacy Attribute Based Access Control authorization mode.
class LegacyAbacContainerV1beta1 {
  /// Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  final bool? enabled;

  /// Creates a new [LegacyAbacContainerV1beta1].
  /// [enabled] Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  LegacyAbacContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory LegacyAbacContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LegacyAbacContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
