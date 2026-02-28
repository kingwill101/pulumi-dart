// ignore_for_file: unused_element, unnecessary_cast

/// A service account.
class ServiceAccountResponse {
  /// Email address of the service account.
  final String email;

  /// The list of scopes to be made available for this service account.
  final List<String> scopes;

  /// Creates a new [ServiceAccountResponse].
  /// [email] Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account.
  ServiceAccountResponse({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['scopes'] = scopes;
    return map;
  }

  factory ServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}
