// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_configuration_authorizer_config.dart';
import 'domain_configuration_tls_config.dart';

/// {@template pulumi_iot_domain_configuration_domain_configuration_args_doc}
/// The set of arguments for DomainConfiguration.
/// {@endtemplate}
/// {@macro pulumi_iot_domain_configuration_domain_configuration_args_doc}
class DomainConfigurationArgs {
  /// An enumerated string that speciﬁes the application-layer protocol. Valid values are `SECURE_MQTT`, `MQTT_WSS`, `HTTPS` or `DEFAULT`.
  final pulumi.Input<String>? applicationProtocol;

  /// An enumerated string that speciﬁes the authentication type. Valid values are `CUSTOM_AUTH_X509`, `CUSTOM_AUTH`, `AWS_X509`, `AWS_SIGV4` or `DEFAULT`.
  final pulumi.Input<String>? authenticationType;

  /// An object that specifies the authorization service for a domain. See the `authorizer_config` Block below for details.
  final pulumi.Input<DomainConfigurationAuthorizerConfig>? authorizerConfig;

  /// Fully-qualified domain name.
  final pulumi.Input<String>? domainName;

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

  /// An object that specifies the TLS configuration for a domain. See the `tls_config` Block below for details.
  final pulumi.Input<DomainConfigurationTlsConfig>? tlsConfig;

  /// The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for Amazon Web Services-managed domains.
  final pulumi.Input<String>? validationCertificateArn;

  /// Creates a new [DomainConfigurationArgs].
  /// [applicationProtocol] An enumerated string that speciﬁes the application-layer protocol. Valid values are `SECURE_MQTT`, `MQTT_WSS`, `HTTPS` or `DEFAULT`.
  /// [authenticationType] An enumerated string that speciﬁes the authentication type. Valid values are `CUSTOM_AUTH_X509`, `CUSTOM_AUTH`, `AWS_X509`, `AWS_SIGV4` or `DEFAULT`.
  /// [authorizerConfig] An object that specifies the authorization service for a domain. See the `authorizer_config` Block below for details.
  /// [domainName] Fully-qualified domain name.
  /// [name] The name of the domain configuration. This value must be unique to a region.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serverCertificateArns] The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for Amazon Web Services-managed domains. When using a custom `domain_name`, the cert must include it.
  /// [serviceType] The type of service delivered by the endpoint. Note: Amazon Web Services IoT Core currently supports only the `DATA` service type.
  /// [status] The status to which the domain configuration should be set. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tlsConfig] An object that specifies the TLS configuration for a domain. See the `tls_config` Block below for details.
  /// [validationCertificateArn] The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for Amazon Web Services-managed domains.
  DomainConfigurationArgs({
    String? applicationProtocol,
    String? authenticationType,
    DomainConfigurationAuthorizerConfig? authorizerConfig,
    String? domainName,
    String? name,
    String? region,
    List<String>? serverCertificateArns,
    String? serviceType,
    String? status,
    Map<String, String>? tags,
    DomainConfigurationTlsConfig? tlsConfig,
    String? validationCertificateArn,
  }) : applicationProtocol = pulumi.Input.asOptionalInput<String>(
         applicationProtocol,
       ),
       authenticationType = pulumi.Input.asOptionalInput<String>(
         authenticationType,
       ),
       authorizerConfig =
           pulumi.Input.asOptionalInput<DomainConfigurationAuthorizerConfig>(
             authorizerConfig,
           ),
       domainName = pulumi.Input.asOptionalInput<String>(domainName),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       serverCertificateArns = pulumi.Input.asOptionalInput<List<String>>(
         serverCertificateArns,
       ),
       serviceType = pulumi.Input.asOptionalInput<String>(serviceType),
       status = pulumi.Input.asOptionalInput<String>(status),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       tlsConfig = pulumi.Input.asOptionalInput<DomainConfigurationTlsConfig>(
         tlsConfig,
       ),
       validationCertificateArn = pulumi.Input.asOptionalInput<String>(
         validationCertificateArn,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationProtocol': ?applicationProtocol,
      'authenticationType': ?authenticationType,
      'authorizerConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DomainConfigurationAuthorizerConfig,
            Map<String, dynamic>
          >(authorizerConfig, (value) => value.toMap()),
      'domainName': ?domainName,
      'name': ?name,
      'region': ?region,
      'serverCertificateArns': ?serverCertificateArns,
      'serviceType': ?serviceType,
      'status': ?status,
      'tags': ?tags,
      'tlsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DomainConfigurationTlsConfig,
            Map<String, dynamic>
          >(tlsConfig, (value) => value.toMap()),
      'validationCertificateArn': ?validationCertificateArn,
    };
  }

  factory DomainConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DomainConfigurationArgs(
      applicationProtocol: map['applicationProtocol'] == null
          ? null
          : map['applicationProtocol'] as String,
      authenticationType: map['authenticationType'] == null
          ? null
          : map['authenticationType'] as String,
      authorizerConfig: map['authorizerConfig'] == null
          ? null
          : DomainConfigurationAuthorizerConfig.fromMap(
              (map['authorizerConfig'] as Map).cast<String, dynamic>(),
            ),
      domainName: map['domainName'] == null
          ? null
          : map['domainName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverCertificateArns: map['serverCertificateArns'] == null
          ? null
          : (map['serverCertificateArns'] as List).cast<String>(),
      serviceType: map['serviceType'] == null
          ? null
          : map['serviceType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tlsConfig: map['tlsConfig'] == null
          ? null
          : DomainConfigurationTlsConfig.fromMap(
              (map['tlsConfig'] as Map).cast<String, dynamic>(),
            ),
      validationCertificateArn: map['validationCertificateArn'] == null
          ? null
          : map['validationCertificateArn'] as String,
    );
  }
}
