// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDefaultServiceAccount.
class GetDefaultServiceAccountResult2 {
  /// The email address of the service account. This value is often used to refer to the service account
  /// in order to grant IAM permissions.
  final String email;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Identity of the service account in the form `serviceAccount:{email}`. This value is often used to refer to the service account in order to grant IAM permissions.
  final String member;
  final String project;

  GetDefaultServiceAccountResult2({
    required this.email,
    required this.id,
    required this.member,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['id'] = id;
    map['member'] = member;
    map['project'] = project;
    return map;
  }

  factory GetDefaultServiceAccountResult2.fromMap(Map<String, dynamic> map) {
    return GetDefaultServiceAccountResult2(
      email: map['email'] as String,
      id: map['id'] as String,
      member: map['member'] as String,
      project: map['project'] as String,
    );
  }
}
