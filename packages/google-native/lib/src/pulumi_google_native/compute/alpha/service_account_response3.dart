// ignore_for_file: unused_element, unnecessary_cast

/// A service account.
class ServiceAccountResponse3 {
  /// Email address of the service account.
  final String email;

  /// The list of scopes to be made available for this service account.
  final List<String> scopes;

  ServiceAccountResponse3({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory ServiceAccountResponse3.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse3(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
