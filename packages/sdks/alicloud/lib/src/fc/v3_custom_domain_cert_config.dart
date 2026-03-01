// ignore_for_file: unused_element, unnecessary_cast


class V3CustomDomainCertConfig {
  /// Certificate Name
  final String? certName;
  /// PEM format certificate
  final String? certificate;
  /// Private Key in PEM format
  final String? privateKey;

  /// Creates a new [V3CustomDomainCertConfig].
  /// [certName] Certificate Name
  /// [certificate] PEM format certificate
  /// [privateKey] Private Key in PEM format
  V3CustomDomainCertConfig({
    this.certName,
    this.certificate,
    this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certName': ?certName,
      'certificate': ?certificate,
      'privateKey': ?privateKey,
    };
  }

  factory V3CustomDomainCertConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainCertConfig(
      certName: map['certName'] == null ? null : map['certName'] as String,
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
    );
  }
}

