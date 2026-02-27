// ignore_for_file: unused_element, unnecessary_cast

/// A service account that acts as an identity.
class ServiceAccountResponseNotebooksV2 {
  /// Optional. Email address of the service account.
  final String email;

  /// The list of scopes to be made available for this service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  final List<String> scopes;

  ServiceAccountResponseNotebooksV2({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory ServiceAccountResponseNotebooksV2.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponseNotebooksV2(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
