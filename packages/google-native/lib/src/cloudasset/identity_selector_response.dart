// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an identity for which to determine resource access, based on roles assigned either directly to them or to the groups they belong to, directly or indirectly.
class IdentitySelectorResponse {
  /// The identity appear in the form of principals in [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of supported forms are: "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com". Notice that wildcard characters (such as * and ?) are not supported. You must give a specific identity.
  final String identity;

  /// Creates a new [IdentitySelectorResponse].
  /// [identity] The identity appear in the form of principals in [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of supported forms are: "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com". Notice that wildcard characters (such as * and ?) are not supported. You must give a specific identity.
  IdentitySelectorResponse({required this.identity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identity': identity};
  }

  factory IdentitySelectorResponse.fromMap(Map<String, dynamic> map) {
    return IdentitySelectorResponse(identity: map['identity'] as String);
  }
}
