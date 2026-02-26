// ignore_for_file: unused_element, unnecessary_cast

/// A service account.
class ServiceAccountResponse4 {
  /// Email address of the service account.
  final String email;

  /// The list of scopes to be made available for this service account.
  final List<String> scopes;

  ServiceAccountResponse4({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory ServiceAccountResponse4.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse4(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
