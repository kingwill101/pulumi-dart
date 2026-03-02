// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDomainEndpointOptions {
  /// Fully qualified domain for your custom endpoint.
  final pulumi.Input<String>? customEndpoint;
  /// ACM certificate ARN for your custom endpoint.
  final pulumi.Input<String>? customEndpointCertificateArn;
  /// Whether to enable custom endpoint for the OpenSearch domain.
  final pulumi.Input<bool>? customEndpointEnabled;
  /// Whether or not to require HTTPS. Defaults to `true`.
  final pulumi.Input<bool>? enforceHttps;
  /// Name of the TLS security policy that needs to be applied to the HTTPS endpoint. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/opensearch-service/latest/APIReference/API_DomainEndpointOptions.html#opensearchservice-Type-DomainEndpointOptions-TLSSecurityPolicy). Pulumi will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? tlsSecurityPolicy;

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
      customEndpoint: map['customEndpoint'] == null ? null : ((map['customEndpoint'] as String).input()).input(),
      customEndpointCertificateArn: map['customEndpointCertificateArn'] == null ? null : ((map['customEndpointCertificateArn'] as String).input()).input(),
      customEndpointEnabled: map['customEndpointEnabled'] == null ? null : ((map['customEndpointEnabled'] as bool).input()).input(),
      enforceHttps: map['enforceHttps'] == null ? null : ((map['enforceHttps'] as bool).input()).input(),
      tlsSecurityPolicy: map['tlsSecurityPolicy'] == null ? null : ((map['tlsSecurityPolicy'] as String).input()).input(),
    );
  }
}

