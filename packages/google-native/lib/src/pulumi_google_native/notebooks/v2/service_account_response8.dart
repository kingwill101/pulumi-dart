// ignore_for_file: unused_element, unnecessary_cast

/// A service account that acts as an identity.
class ServiceAccountResponse8 {
  /// Optional. Email address of the service account.
  final String email;

  /// The list of scopes to be made available for this service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  final List<String> scopes;

  ServiceAccountResponse8({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory ServiceAccountResponse8.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse8(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
