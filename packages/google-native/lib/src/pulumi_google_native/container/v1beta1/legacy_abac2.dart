// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the legacy Attribute Based Access Control authorization mode.
class LegacyAbac2 {
  /// Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  final bool? enabled;

  LegacyAbac2({
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

  factory LegacyAbac2.fromMap(Map<String, dynamic> map) {
    return LegacyAbac2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
