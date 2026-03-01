// ignore_for_file: unused_element, unnecessary_cast


/// Single resource Id's metadata.
class ResourceMetadataResponse {
  /// Account Id. For example - the AWS account id.
  final String? accountId;
  /// Resource Id - e.g. "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1".
  final String resourceId;
  /// Resource kind.
  final String? resourceKind;
  /// Resource Origin.
  final String? resourceOrigin;
  /// Resource type. e.g. "Microsoft.Compute/virtualMachines"
  final String? resourceType;

  /// Creates a new [ResourceMetadataResponse].
  /// [accountId] Account Id. For example - the AWS account id.
  /// [resourceId] Resource Id - e.g. "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1".
  /// [resourceKind] Resource kind.
  /// [resourceOrigin] Resource Origin.
  /// [resourceType] Resource type. e.g. "Microsoft.Compute/virtualMachines"
  ResourceMetadataResponse({
    this.accountId,
    required this.resourceId,
    this.resourceKind,
    this.resourceOrigin,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'resourceId': resourceId,
      'resourceKind': ?resourceKind,
      'resourceOrigin': ?resourceOrigin,
      'resourceType': ?resourceType,
    };
  }

  factory ResourceMetadataResponse.fromMap(Map<String, dynamic> map) {
    return ResourceMetadataResponse(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      resourceId: map['resourceId'] as String,
      resourceKind: map['resourceKind'] == null ? null : map['resourceKind'] as String,
      resourceOrigin: map['resourceOrigin'] == null ? null : map['resourceOrigin'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
    );
  }
}

