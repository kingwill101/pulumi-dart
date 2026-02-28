// ignore_for_file: unused_element, unnecessary_cast


class DomainDomainEndpointOptions {
  /// Fully qualified domain for your custom endpoint.
  final String? customEndpoint;
  /// ACM certificate ARN for your custom endpoint.
  final String? customEndpointCertificateArn;
  /// Whether to enable custom endpoint for the OpenSearch domain.
  final bool? customEndpointEnabled;
  /// Whether or not to require HTTPS. Defaults to `true`.
  final bool? enforceHttps;
  /// Name of the TLS security policy that needs to be applied to the HTTPS endpoint. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_DomainEndpointOptions.html#opensearchservice-Type-DomainEndpointOptions-TLSSecurityPolicy). Pulumi will only perform drift detection if a configuration value is provided.
  final String? tlsSecurityPolicy;

  /// Creates a new [DomainDomainEndpointOptions].
  /// [customEndpoint] Fully qualified domain for your custom endpoint.
  /// [customEndpointCertificateArn] ACM certificate ARN for your custom endpoint.
  /// [customEndpointEnabled] Whether to enable custom endpoint for the OpenSearch domain.
  /// [enforceHttps] Whether or not to require HTTPS. Defaults to `true`.
  /// [tlsSecurityPolicy] Name of the TLS security policy that needs to be applied to the HTTPS endpoint. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_DomainEndpointOptions.html#opensearchservice-Type-DomainEndpointOptions-TLSSecurityPolicy). Pulumi will only perform drift detection if a configuration value is provided.
  DomainDomainEndpointOptions({
    this.customEndpoint,
    this.customEndpointCertificateArn,
    this.customEndpointEnabled,
    this.enforceHttps,
    this.tlsSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEndpoint': ?customEndpoint,
      'customEndpointCertificateArn': ?customEndpointCertificateArn,
      'customEndpointEnabled': ?customEndpointEnabled,
      'enforceHttps': ?enforceHttps,
      'tlsSecurityPolicy': ?tlsSecurityPolicy,
    };
  }

  factory DomainDomainEndpointOptions.fromMap(Map<String, dynamic> map) {
    return DomainDomainEndpointOptions(
      customEndpoint: map['customEndpoint'] == null ? null : map['customEndpoint'] as String,
      customEndpointCertificateArn: map['customEndpointCertificateArn'] == null ? null : map['customEndpointCertificateArn'] as String,
      customEndpointEnabled: map['customEndpointEnabled'] == null ? null : map['customEndpointEnabled'] as bool,
      enforceHttps: map['enforceHttps'] == null ? null : map['enforceHttps'] as bool,
      tlsSecurityPolicy: map['tlsSecurityPolicy'] == null ? null : map['tlsSecurityPolicy'] as String,
    );
  }
}

