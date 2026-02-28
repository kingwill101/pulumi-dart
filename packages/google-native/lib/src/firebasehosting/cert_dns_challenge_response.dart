// ignore_for_file: unused_element, unnecessary_cast

/// Represents a DNS certificate challenge.
class CertDnsChallengeResponse {
  /// The domain name upon which the DNS challenge must be satisfied.
  final String domainName;

  /// The value that must be present as a TXT record on the domain name to satisfy the challenge.
  final String token;

  /// Creates a new [CertDnsChallengeResponse].
  /// [domainName] The domain name upon which the DNS challenge must be satisfied.
  /// [token] The value that must be present as a TXT record on the domain name to satisfy the challenge.
  CertDnsChallengeResponse({
    required this.domainName,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['token'] = token;
    return map;
  }

  factory CertDnsChallengeResponse.fromMap(Map<String, dynamic> map) {
    return CertDnsChallengeResponse(
      domainName: map['domainName'] as String,
      token: map['token'] as String,
    );
  }
}
