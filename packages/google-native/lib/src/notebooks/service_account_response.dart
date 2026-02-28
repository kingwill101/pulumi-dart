// ignore_for_file: unused_element, unnecessary_cast


/// A service account that acts as an identity.
class ServiceAccountResponse {
  /// Optional. Email address of the service account.
  final String email;
  /// The list of scopes to be made available for this service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  final List<String> scopes;

  /// Creates a new [ServiceAccountResponse].
  /// [email] Optional. Email address of the service account.
  /// [scopes] The list of scopes to be made available for this service account. Set by the CLH to https://www.googleapis.com/auth/cloud-platform
  ServiceAccountResponse({
    required this.email,
    required this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'scopes': scopes,
    };
  }

  factory ServiceAccountResponse.fromMap(Map<String, dynamic> map) {
    return ServiceAccountResponse(
      email: map['email'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
    );
  }
}

