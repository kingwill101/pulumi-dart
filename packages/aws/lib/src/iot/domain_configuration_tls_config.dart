// ignore_for_file: unused_element, unnecessary_cast


class DomainConfigurationTlsConfig {
  /// The security policy for a domain configuration.
  final String? securityPolicy;

  /// Creates a new [DomainConfigurationTlsConfig].
  /// [securityPolicy] The security policy for a domain configuration.
  DomainConfigurationTlsConfig({
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityPolicy': ?securityPolicy,
    };
  }

  factory DomainConfigurationTlsConfig.fromMap(Map<String, dynamic> map) {
    return DomainConfigurationTlsConfig(
      securityPolicy: map['securityPolicy'] == null ? null : map['securityPolicy'] as String,
    );
  }
}

