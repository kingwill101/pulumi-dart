// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getFolderServiceAccount.
class GetFolderServiceAccountResult {
  /// The email address of the service account. This value is
  /// often used to refer to the service account in order to grant IAM permissions.
  final String accountEmail;
  final String folderId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Access Approval service account resource name. Format is "folders/{folder_id}/serviceAccount".
  final String name;

  GetFolderServiceAccountResult({
    required this.accountEmail,
    required this.folderId,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountEmail'] = accountEmail;
    map['folderId'] = folderId;
    map['id'] = id;
    map['name'] = name;
    return map;
  }

  factory GetFolderServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetFolderServiceAccountResult(
      accountEmail: map['accountEmail'] as String,
      folderId: map['folderId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }
}
