// ignore_for_file: unused_element, unnecessary_cast

class DomainConfigurationTlsConfig {
  /// The security policy for a domain configuration.
  final String? securityPolicy;

  DomainConfigurationTlsConfig({
    this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    return map;
  }

  factory DomainConfigurationTlsConfig.fromMap(Map<String, dynamic> map) {
    return DomainConfigurationTlsConfig(
      securityPolicy: map['securityPolicy'] == null
          ? null
          : map['securityPolicy'] as String,
    );
  }
}
