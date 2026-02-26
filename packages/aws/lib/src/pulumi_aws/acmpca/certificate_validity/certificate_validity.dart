// ignore_for_file: unused_element, unnecessary_cast

class CertificateValidity {
  /// Determines how <span pulumi-lang-nodejs="`value`" pulumi-lang-dotnet="`Value`" pulumi-lang-go="`value`" pulumi-lang-python="`value`" pulumi-lang-yaml="`value`" pulumi-lang-java="`value`">`value`</span> is interpreted. Valid values: `DAYS`, `MONTHS`, `YEARS`, `ABSOLUTE`, `END_DATE`.
  final String type;

  /// If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `DAYS`, `MONTHS`, or `YEARS`, the relative time until the certificate expires. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `ABSOLUTE`, the date in seconds since the Unix epoch. If <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `END_DATE`, the  date in RFC 3339 format.
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
