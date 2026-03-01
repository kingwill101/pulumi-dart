// ignore_for_file: unused_element, unnecessary_cast


/// TokenReviewSpec is a description of the token authentication request.
class TokenReviewSpecAuthenticationK8sIoV1beta1 {
  /// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  final List<String>? audiences;
  /// Token is the opaque bearer token.
  final String? token;

  /// Creates a new [TokenReviewSpecAuthenticationK8sIoV1beta1].
  /// [audiences] Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  /// [token] Token is the opaque bearer token.
  TokenReviewSpecAuthenticationK8sIoV1beta1({
    this.audiences,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'token': ?token,
    };
  }

  factory TokenReviewSpecAuthenticationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TokenReviewSpecAuthenticationK8sIoV1beta1(
      audiences: map['audiences'] == null ? null : (map['audiences'] as List).cast<String>(),
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}

