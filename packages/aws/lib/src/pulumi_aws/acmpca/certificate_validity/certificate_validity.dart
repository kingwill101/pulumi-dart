// ignore_for_file: unused_element, unnecessary_cast

class CertificateValidity {
  /// Determines how `value` is interpreted. Valid values: `DAYS`, `MONTHS`, `YEARS`, `ABSOLUTE`, `END_DATE`.
  final String type;

  /// If `type` is `DAYS`, `MONTHS`, or `YEARS`, the relative time until the certificate expires. If `type` is `ABSOLUTE`, the date in seconds since the Unix epoch. If `type` is `END_DATE`, the  date in RFC 3339 format.
  final String value;

  CertificateValidity({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory CertificateValidity.fromMap(Map<String, dynamic> map) {
    return CertificateValidity(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
