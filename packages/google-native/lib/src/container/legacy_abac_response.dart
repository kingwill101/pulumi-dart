// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the legacy Attribute Based Access Control authorization mode.
class LegacyAbacResponse {
  /// Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  final bool enabled;

  /// Creates a new [LegacyAbacResponse].
  /// [enabled] Whether the ABAC authorizer is enabled for this cluster. When enabled, identities in the system, including service accounts, nodes, and controllers, will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  LegacyAbacResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory LegacyAbacResponse.fromMap(Map<String, dynamic> map) {
    return LegacyAbacResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

