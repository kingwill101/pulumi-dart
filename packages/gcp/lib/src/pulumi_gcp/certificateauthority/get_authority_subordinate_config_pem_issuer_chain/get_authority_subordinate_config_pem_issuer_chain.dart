// ignore_for_file: unused_element, unnecessary_cast

class GetAuthoritySubordinateConfigPemIssuerChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  final List<String> pemCertificates;

  GetAuthoritySubordinateConfigPemIssuerChain({
    required this.pemCertificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pemCertificates'] = pemCertificates;
    return map;
  }

  factory GetAuthoritySubordinateConfigPemIssuerChain.fromMap(
      Map<String, dynamic> map) {
    return GetAuthoritySubordinateConfigPemIssuerChain(
      pemCertificates: (map['pemCertificates'] as List).cast<String>(),
    );
  }
}
