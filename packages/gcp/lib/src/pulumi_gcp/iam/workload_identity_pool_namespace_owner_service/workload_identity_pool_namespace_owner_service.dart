// ignore_for_file: unused_element, unnecessary_cast

class WorkloadIdentityPoolNamespaceOwnerService {
  /// (Output)
  /// The service agent principal subject, e.g.
  /// `serviceAccount:service-1234@gcp-sa-gkehub.iam.gserviceaccount.com`.
  final String? principalSubject;

  WorkloadIdentityPoolNamespaceOwnerService({
    this.principalSubject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final principalSubjectValue = principalSubject;
    if (principalSubjectValue != null) {
      map['principalSubject'] = principalSubjectValue;
    }
    return map;
  }

  factory WorkloadIdentityPoolNamespaceOwnerService.fromMap(
      Map<String, dynamic> map) {
    return WorkloadIdentityPoolNamespaceOwnerService(
      principalSubject: map['principalSubject'] == null
          ? null
          : map['principalSubject'] as String,
    );
  }
}
