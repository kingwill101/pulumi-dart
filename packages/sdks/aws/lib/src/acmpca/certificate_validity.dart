// ignore_for_file: unused_element, unnecessary_cast


class CertificateValidity {
  /// Determines how `value` is interpreted. Valid values: `DAYS`, `MONTHS`, `YEARS`, `ABSOLUTE`, `END_DATE`.
  final String type;
  /// If `type` is `DAYS`, `MONTHS`, or `YEARS`, the relative time until the certificate expires. If `type` is `ABSOLUTE`, the date in seconds since the Unix epoch. If `type` is `END_DATE`, the  date in RFC 3339 format.
  final String value;

  /// Creates a new [CertificateValidity].
  /// [type] Determines how `value` is interpreted. Valid values: `DAYS`, `MONTHS`, `YEARS`, `ABSOLUTE`, `END_DATE`.
  /// [value] If `type` is `DAYS`, `MONTHS`, or `YEARS`, the relative time until the certificate expires. If `type` is `ABSOLUTE`, the date in seconds since the Unix epoch. If `type` is `END_DATE`, the  date in RFC 3339 format.
  CertificateValidity({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory CertificateValidity.fromMap(Map<String, dynamic> map) {
    return CertificateValidity(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

