// ignore_for_file: unused_element, unnecessary_cast

import 'user_info_patch_authentication_k8s_io_v1beta1.dart';

/// TokenReviewStatus is the result of the token authentication request.
class TokenReviewStatusPatchAuthenticationK8sIoV1beta1 {
  /// Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  final List<String>? audiences;
  /// Authenticated indicates that the token was associated with a known user.
  final bool? authenticated;
  /// Error indicates that the token couldn't be checked
  final String? error;
  /// User is the UserInfo associated with the provided token.
  final UserInfoPatchAuthenticationK8sIoV1beta1? user;

  /// Creates a new [TokenReviewStatusPatchAuthenticationK8sIoV1beta1].
  /// [audiences] Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  /// [authenticated] Authenticated indicates that the token was associated with a known user.
  /// [error] Error indicates that the token couldn't be checked
  /// [user] User is the UserInfo associated with the provided token.
  TokenReviewStatusPatchAuthenticationK8sIoV1beta1({
    this.audiences,
    this.authenticated,
    this.error,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audiences': ?audiences,
      'authenticated': ?authenticated,
      'error': ?error,
      'user': ?user == null ? null : user!.toMap(),
    };
  }

  factory TokenReviewStatusPatchAuthenticationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return TokenReviewStatusPatchAuthenticationK8sIoV1beta1(
      audiences: map['audiences'] == null ? null : (map['audiences'] as List).cast<String>(),
      authenticated: map['authenticated'] == null ? null : map['authenticated'] as bool,
      error: map['error'] == null ? null : map['error'] as String,
      user: map['user'] == null ? null : UserInfoPatchAuthenticationK8sIoV1beta1.fromMap((map['user'] as Map).cast<String, dynamic>()),
    );
  }
}

