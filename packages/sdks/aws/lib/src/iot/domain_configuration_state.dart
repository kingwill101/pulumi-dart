// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_configuration_authorizer_config.dart';
import 'domain_configuration_tls_config.dart';

/// Input properties used for looking up and filtering DomainConfiguration resources.
class DomainConfigurationState {
  /// An enumerated string that speciﬁes the application-layer protocol. Valid values are `SECURE_MQTT`, `MQTT_WSS`, `HTTPS` or `DEFAULT`.
  final pulumi.Input<String>? applicationProtocol;
  /// The ARN of the domain configuration.
  final pulumi.Input<String>? arn;
  /// An enumerated string that speciﬁes the authentication type. Valid values are `CUSTOM_AUTH_X509`, `CUSTOM_AUTH`, `AWS_X509`, `AWS_SIGV4` or `DEFAULT`.
  final pulumi.Input<String>? authenticationType;
  /// An object that specifies the authorization service for a domain. See the `authorizer_config` Block below for details.
  final pulumi.Input<DomainConfigurationAuthorizerConfig>? authorizerConfig;
  /// Fully-qualified domain name.
  final pulumi.Input<String>? domainName;
  /// The type of the domain.
  final pulumi.Input<String>? domainType;
  /// The name of the domain configuration. This value must be unique to a region.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for Amazon Web Services-managed domains. When using a custom `domain_name`, the cert must include it.
  final pulumi.Input<List<String>>? serverCertificateArns;
  /// The type of service delivered by the endpoint. Note: Amazon Web Services IoT Core currently supports only the `DATA` service type.
  final pulumi.Input<String>? serviceType;
  /// The status to which the domain configuration should be set. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// An object that specifies the TLS configuration for a domain. See the `tls_config` Block below for details.
  final pulumi.Input<DomainConfigurationTlsConfig>? tlsConfig;
  /// The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for Amazon Web Services-managed domains.
  final pulumi.Input<String>? validationCertificateArn;

  /// Creates a new [DomainConfigurationState].
  /// [applicationProtocol] An enumerated string that speciﬁes the application-layer protocol. Valid values are `SECURE_MQTT`, `MQTT_WSS`, `HTTPS` or `DEFAULT`.
  /// [arn] The ARN of the domain configuration.
  /// [authenticationType] An enumerated string that speciﬁes the authentication type. Valid values are `CUSTOM_AUTH_X509`, `CUSTOM_AUTH`, `AWS_X509`, `AWS_SIGV4` or `DEFAULT`.
  /// [authorizerConfig] An object that specifies the authorization service for a domain. See the `authorizer_config` Block below for details.
  /// [domainName] Fully-qualified domain name.
  /// [domainType] The type of the domain.
  /// [name] The name of the domain configuration. This value must be unique to a region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverCertificateArns] The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for Amazon Web Services-managed domains. When using a custom `domain_name`, the cert must include it.
  /// [serviceType] The type of service delivered by the endpoint. Note: Amazon Web Services IoT Core currently supports only the `DATA` service type.
  /// [status] The status to which the domain configuration should be set. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tlsConfig] An object that specifies the TLS configuration for a domain. See the `tls_config` Block below for details.
  /// [validationCertificateArn] The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for Amazon Web Services-managed domains.
  DomainConfigurationState({
    this.applicationProtocol,
    this.arn,
    this.authenticationType,
    this.authorizerConfig,
    this.domainName,
    this.domainType,
    this.name,
    this.region,
    this.serverCertificateArns,
    this.serviceType,
    this.status,
    this.tags,
    this.tagsAll,
    this.tlsConfig,
    this.validationCertificateArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProtocol': ?applicationProtocol,
      'arn': ?arn,
      'authenticationType': ?authenticationType,
      'authorizerConfig': ?pulumi.Input.mapOptionalInputValue<DomainConfigurationAuthorizerConfig, Map<String, dynamic>>(authorizerConfig, (value) => value.toMap()),
      'domainName': ?domainName,
      'domainType': ?domainType,
      'name': ?name,
      'region': ?region,
      'serverCertificateArns': ?serverCertificateArns,
      'serviceType': ?serviceType,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<DomainConfigurationTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'validationCertificateArn': ?validationCertificateArn,
    };
  }

  factory DomainConfigurationState.fromMap(Map<String, dynamic> map) {
    return DomainConfigurationState(
      applicationProtocol: map['applicationProtocol'] == null ? null : (map['applicationProtocol'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
      authorizerConfig: map['authorizerConfig'] == null ? null : (DomainConfigurationAuthorizerConfig.fromMap((map['authorizerConfig'] as Map).cast<String, dynamic>())).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      domainType: map['domainType'] == null ? null : (map['domainType'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      serverCertificateArns: map['serverCertificateArns'] == null ? null : ((map['serverCertificateArns'] as List).cast<String>()).input(),
      serviceType: map['serviceType'] == null ? null : (map['serviceType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      tlsConfig: map['tlsConfig'] == null ? null : (DomainConfigurationTlsConfig.fromMap((map['tlsConfig'] as Map).cast<String, dynamic>())).input(),
      validationCertificateArn: map['validationCertificateArn'] == null ? null : (map['validationCertificateArn'] as String).input(),
    );
  }
}

