// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDomainEndpointOptions {
  /// Fully qualified domain for your custom endpoint.
  final pulumi.Input<String>? customEndpoint;
  /// ACM certificate ARN for your custom endpoint.
  final pulumi.Input<String>? customEndpointCertificateArn;
  /// Whether to enable custom endpoint for the Elasticsearch domain.
  final pulumi.Input<bool>? customEndpointEnabled;
  /// Whether or not to require HTTPS. Defaults to `true`.
  final pulumi.Input<bool>? enforceHttps;
  /// Name of the TLS security policy that needs to be applied to the HTTPS endpoint. Valid values:  `Policy-Min-TLS-1-0-2019-07`, `Policy-Min-TLS-1-2-2019-07`, and `Policy-Min-TLS-1-2-PFS-2023-10`. Pulumi will only perform drift detection if a configuration value is provided.
  final pulumi.Input<String>? tlsSecurityPolicy;

  /// Creates a new [DomainDomainEndpointOptions].
  /// [customEndpoint] Fully qualified domain for your custom endpoint.
  /// [customEndpointCertificateArn] ACM certificate ARN for your custom endpoint.
  /// [customEndpointEnabled] Whether to enable custom endpoint for the Elasticsearch domain.
  /// [enforceHttps] Whether or not to require HTTPS. Defaults to `true`.
  /// [tlsSecurityPolicy] Name of the TLS security policy that needs to be applied to the HTTPS endpoint. Valid values:  `Policy-Min-TLS-1-0-2019-07`, `Policy-Min-TLS-1-2-2019-07`, and `Policy-Min-TLS-1-2-PFS-2023-10`. Pulumi will only perform drift detection if a configuration value is provided.
  const DomainDomainEndpointOptions({
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
      customEndpoint: (() { final guardedValue = map['customEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEndpointCertificateArn: (() { final guardedValue = map['customEndpointCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEndpointEnabled: (() { final guardedValue = map['customEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enforceHttps: (() { final guardedValue = map['enforceHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tlsSecurityPolicy: (() { final guardedValue = map['tlsSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

