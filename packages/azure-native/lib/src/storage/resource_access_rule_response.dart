// ignore_for_file: unused_element, unnecessary_cast


/// Resource Access Rule.
class ResourceAccessRuleResponse {
  /// Resource Id
  final String? resourceId;
  /// Tenant Id
  final String? tenantId;

  /// Creates a new [ResourceAccessRuleResponse].
  /// [resourceId] Resource Id
  /// [tenantId] Tenant Id
  ResourceAccessRuleResponse({
    this.resourceId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
      'tenantId': ?tenantId,
    };
  }

  factory ResourceAccessRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAccessRuleResponse(
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

