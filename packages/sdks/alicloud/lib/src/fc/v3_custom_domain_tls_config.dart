// ignore_for_file: unused_element, unnecessary_cast


class V3CustomDomainTlsConfig {
  /// List of TLS cipher suites
  final List<String>? cipherSuites;
  /// The maximum version of TLS. Enumeration values: TLSv1.3, TLSv1.2, TLSv1.1, TLSv1.0
  final String? maxVersion;
  /// TLS minimum version number. Enumeration values: TLSv1.3, TLSv1.2, TLSv1.1, TLSv1.0
  final String? minVersion;

  /// Creates a new [V3CustomDomainTlsConfig].
  /// [cipherSuites] List of TLS cipher suites
  /// [maxVersion] The maximum version of TLS. Enumeration values: TLSv1.3, TLSv1.2, TLSv1.1, TLSv1.0
  /// [minVersion] TLS minimum version number. Enumeration values: TLSv1.3, TLSv1.2, TLSv1.1, TLSv1.0
  V3CustomDomainTlsConfig({
    this.cipherSuites,
    this.maxVersion,
    this.minVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherSuites': ?cipherSuites,
      'maxVersion': ?maxVersion,
      'minVersion': ?minVersion,
    };
  }

  factory V3CustomDomainTlsConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainTlsConfig(
      cipherSuites: map['cipherSuites'] == null ? null : (map['cipherSuites'] as List).cast<String>(),
      maxVersion: map['maxVersion'] == null ? null : map['maxVersion'] as String,
      minVersion: map['minVersion'] == null ? null : map['minVersion'] as String,
    );
  }
}

