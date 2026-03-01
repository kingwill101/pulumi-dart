// ignore_for_file: unused_element, unnecessary_cast


/// Msi identity details of the resource
class ResourceIdentityResponse {
  /// Service Principal Id backing the Msi
  final String principalId;
  /// Home Tenant Id
  final String tenantId;
  /// Identity type
  final String? type;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] Service Principal Id backing the Msi
  /// [tenantId] Home Tenant Id
  /// [type] Identity type
  ResourceIdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory ResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdentityResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

