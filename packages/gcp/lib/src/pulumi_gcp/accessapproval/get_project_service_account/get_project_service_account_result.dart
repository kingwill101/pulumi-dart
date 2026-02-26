// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getProjectServiceAccount.
class GetProjectServiceAccountResult {
  /// The email address of the service account. This value is
  /// often used to refer to the service account in order to grant IAM permissions.
  final String accountEmail;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Access Approval service account resource name. Format is "projects/{project_id}/serviceAccount".
  final String name;
  final String projectId;

  GetProjectServiceAccountResult({
    required this.accountEmail,
    required this.id,
    required this.name,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountEmail'] = accountEmail;
    map['id'] = id;
    map['name'] = name;
    map['projectId'] = projectId;
    return map;
  }

  factory GetProjectServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceAccountResult(
      accountEmail: map['accountEmail'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
