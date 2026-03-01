// ignore_for_file: unused_element, unnecessary_cast


/// Customer Managed Identity
class MyWorkbookUserAssignedIdentitiesResponse {
  /// The principal ID of resource identity.
  final String principalId;
  /// The tenant ID of resource.
  final String tenantId;

  /// Creates a new [MyWorkbookUserAssignedIdentitiesResponse].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  MyWorkbookUserAssignedIdentitiesResponse({
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory MyWorkbookUserAssignedIdentitiesResponse.fromMap(Map<String, dynamic> map) {
    return MyWorkbookUserAssignedIdentitiesResponse(
      principalId: map['principalId'] as String,
      tenantId: map['tenantId'] as String,
    );
  }
}

