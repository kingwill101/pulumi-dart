// ignore_for_file: unused_element, unnecessary_cast

class AuthoritySubordinateConfigPemIssuerChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  final List<String>? pemCertificates;

  AuthoritySubordinateConfigPemIssuerChain({
    this.pemCertificates,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pemCertificatesValue = pemCertificates;
    if (pemCertificatesValue != null) {
      map['pemCertificates'] = pemCertificatesValue;
    }
    return map;
  }

  factory AuthoritySubordinateConfigPemIssuerChain.fromMap(
      Map<String, dynamic> map) {
    return AuthoritySubordinateConfigPemIssuerChain(
      pemCertificates: map['pemCertificates'] == null
          ? null
          : (map['pemCertificates'] as List).cast<String>(),
    );
  }
}
