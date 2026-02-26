// ignore_for_file: unused_element, unnecessary_cast

class CertificateRevocationDetail {
  /// (Output)
  /// Indicates why a Certificate was revoked.
  final String? revocationState;

  /// (Output)
  /// The time at which this Certificate was revoked.
  final String? revocationTime;

  CertificateRevocationDetail({
    this.revocationState,
    this.revocationTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final revocationStateValue = revocationState;
    if (revocationStateValue != null) {
      map['revocationState'] = revocationStateValue;
    }
    final revocationTimeValue = revocationTime;
    if (revocationTimeValue != null) {
      map['revocationTime'] = revocationTimeValue;
    }
    return map;
  }

  factory CertificateRevocationDetail.fromMap(Map<String, dynamic> map) {
    return CertificateRevocationDetail(
      revocationState: map['revocationState'] == null
          ? null
          : map['revocationState'] as String,
      revocationTime: map['revocationTime'] == null
          ? null
          : map['revocationTime'] as String,
    );
  }
}
