// ignore_for_file: unused_element, unnecessary_cast


class AuthoritySubordinateConfigPemIssuerChain {
  /// Expected to be in leaf-to-root order according to RFC 5246.
  final List<String>? pemCertificates;

  /// Creates a new [AuthoritySubordinateConfigPemIssuerChain].
  /// [pemCertificates] Expected to be in leaf-to-root order according to RFC 5246.
  AuthoritySubordinateConfigPemIssuerChain({
    this.pemCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificates': ?pemCertificates,
    };
  }

  factory AuthoritySubordinateConfigPemIssuerChain.fromMap(Map<String, dynamic> map) {
    return AuthoritySubordinateConfigPemIssuerChain(
      pemCertificates: map['pemCertificates'] == null ? null : (map['pemCertificates'] as List).cast<String>(),
    );
  }
}

