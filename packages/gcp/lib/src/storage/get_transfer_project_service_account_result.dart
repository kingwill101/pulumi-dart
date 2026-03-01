// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTransferProjectServiceAccount.
class GetTransferProjectServiceAccountResult {
  /// Email address of the default service account used by Storage Transfer Jobs running in this project.
  final String email;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String member;
  final String project;

  /// Unique identifier for the service account.
  final String subjectId;

  /// Creates a new [GetTransferProjectServiceAccountResult].
  /// [email] Email address of the default service account used by Storage Transfer Jobs running in this project.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [member] The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  /// [project] Required.
  /// [subjectId] Unique identifier for the service account.
  GetTransferProjectServiceAccountResult({
    required this.email,
    required this.id,
    required this.member,
    required this.project,
    required this.subjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'id': id,
      'member': member,
      'project': project,
      'subjectId': subjectId,
    };
  }

  factory GetTransferProjectServiceAccountResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransferProjectServiceAccountResult(
      email: map['email'] as String,
      id: map['id'] as String,
      member: map['member'] as String,
      project: map['project'] as String,
      subjectId: map['subjectId'] as String,
    );
  }
}
