// ignore_for_file: unused_element, unnecessary_cast

class CaCertificateValidity {
  /// The certificate is not valid after this date.
  final String? notAfter;

  /// The certificate is not valid before this date.
  final String? notBefore;

  CaCertificateValidity({
    this.notAfter,
    this.notBefore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notAfterValue = notAfter;
    if (notAfterValue != null) {
      map['notAfter'] = notAfterValue;
    }
    final notBeforeValue = notBefore;
    if (notBeforeValue != null) {
      map['notBefore'] = notBeforeValue;
    }
    return map;
  }

  factory CaCertificateValidity.fromMap(Map<String, dynamic> map) {
    return CaCertificateValidity(
      notAfter: map['notAfter'] == null ? null : map['notAfter'] as String,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as String,
    );
  }
}
