// ignore_for_file: unused_element, unnecessary_cast

class DomainEndpointOptions {
  /// Enables or disables the requirement that all requests to the domain arrive over HTTPS.
  final bool? enforceHttps;

  /// The minimum required TLS version. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_DomainEndpointOptions.html) for valid values.
  final String? tlsSecurityPolicy;

  /// Creates a new [DomainEndpointOptions].
  /// [enforceHttps] Enables or disables the requirement that all requests to the domain arrive over HTTPS.
  /// [tlsSecurityPolicy] The minimum required TLS version. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_DomainEndpointOptions.html) for valid values.
  DomainEndpointOptions({
    this.enforceHttps,
    this.tlsSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enforceHttpsValue = enforceHttps;
    if (enforceHttpsValue != null) {
      map['enforceHttps'] = enforceHttpsValue;
    }
    final tlsSecurityPolicyValue = tlsSecurityPolicy;
    if (tlsSecurityPolicyValue != null) {
      map['tlsSecurityPolicy'] = tlsSecurityPolicyValue;
    }
    return map;
  }

  factory DomainEndpointOptions.fromMap(Map<String, dynamic> map) {
    return DomainEndpointOptions(
      enforceHttps:
          map['enforceHttps'] == null ? null : map['enforceHttps'] as bool,
      tlsSecurityPolicy: map['tlsSecurityPolicy'] == null
          ? null
          : map['tlsSecurityPolicy'] as String,
    );
  }
}
