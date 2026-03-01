// ignore_for_file: unused_element, unnecessary_cast


class CertificateRevocationDetail {
  /// (Output)
  /// Indicates why a Certificate was revoked.
  final String? revocationState;
  /// (Output)
  /// The time at which this Certificate was revoked.
  final String? revocationTime;

  /// Creates a new [CertificateRevocationDetail].
  /// [revocationState] (Output)
  /// [revocationTime] (Output)
  CertificateRevocationDetail({
    this.revocationState,
    this.revocationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revocationState': ?revocationState,
      'revocationTime': ?revocationTime,
    };
  }

  factory CertificateRevocationDetail.fromMap(Map<String, dynamic> map) {
    return CertificateRevocationDetail(
      revocationState: map['revocationState'] == null ? null : map['revocationState'] as String,
      revocationTime: map['revocationTime'] == null ? null : map['revocationTime'] as String,
    );
  }
}

