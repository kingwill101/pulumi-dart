// ignore_for_file: unused_element, unnecessary_cast


/// A service account.
class ServiceAccountResponse {
  /// Email address of the service account. If empty, default Compute service account will be used.
  final String email;
  /// The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  final List<String> scope;

  /// Creates a new [ServiceAccountResponse].
  /// [email] Email address of the service account. If empty, default Compute service account will be used.
  /// [scope] The list of scopes to be made available for this service account. If empty, access to all Cloud APIs will be allowed.
  ServiceAccountResponse({
    required this.email,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scope': scope,
    };
  }

  factory ServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse(
      email: map['email'] as String,
      scope: (map['scope'] as List).cast<String>(),
    );
  }
}

