// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getManagedFolderIamPolicy.
class GetManagedFolderIamPolicyResult {
  final String bucket;
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String managedFolder;
  final String policyData;

  GetManagedFolderIamPolicyResult({
    required this.bucket,
    required this.etag,
    required this.id,
    required this.managedFolder,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['etag'] = etag;
    map['id'] = id;
    map['managedFolder'] = managedFolder;
    map['policyData'] = policyData;
    return map;
  }

  factory GetManagedFolderIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderIamPolicyResult(
      bucket: map['bucket'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      managedFolder: map['managedFolder'] as String,
      policyData: map['policyData'] as String,
    );
  }
}
