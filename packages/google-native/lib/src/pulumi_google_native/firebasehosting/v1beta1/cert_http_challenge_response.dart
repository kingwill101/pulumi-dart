// ignore_for_file: unused_element, unnecessary_cast

/// Represents an HTTP certificate challenge.
class CertHttpChallengeResponse {
  /// The URL path on which to serve the specified token to satisfy the certificate challenge.
  final String path;

  /// The token to serve at the specified URL path to satisfy the certificate challenge.
  final String token;

  CertHttpChallengeResponse({
    required this.path,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    map['token'] = token;
    return map;
  }

  factory CertHttpChallengeResponse.fromMap(Map<String, dynamic> map) {
    return CertHttpChallengeResponse(
      path: map['path'] as String,
      token: map['token'] as String,
    );
  }
}
