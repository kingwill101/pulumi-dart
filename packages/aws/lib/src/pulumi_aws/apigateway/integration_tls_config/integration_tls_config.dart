// ignore_for_file: unused_element, unnecessary_cast

class IntegrationTlsConfig {
  /// Whether or not API Gateway skips verification that the certificate for an integration endpoint is issued by a [supported certificate authority](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-supported-certificate-authorities-for-http-endpoints.html). This isn’t recommended, but it enables you to use certificates that are signed by private certificate authorities, or certificates that are self-signed. If enabled, API Gateway still performs basic certificate validation, which includes checking the certificate's expiration date, hostname, and presence of a root certificate authority. Supported only for `HTTP` and `HTTP_PROXY` integrations.
  final bool? insecureSkipVerification;

  IntegrationTlsConfig({
    this.insecureSkipVerification,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insecureSkipVerificationValue = insecureSkipVerification;
    if (insecureSkipVerificationValue != null) {
      map['insecureSkipVerification'] = insecureSkipVerificationValue;
    }
    return map;
  }

  factory IntegrationTlsConfig.fromMap(Map<String, dynamic> map) {
    return IntegrationTlsConfig(
      insecureSkipVerification: map['insecureSkipVerification'] == null
          ? null
          : map['insecureSkipVerification'] as bool,
    );
  }
}
