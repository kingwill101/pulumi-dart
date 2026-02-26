// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../domain_configuration_authorizer_config/domain_configuration_authorizer_config.dart';
import '../domain_configuration_tls_config/domain_configuration_tls_config.dart';

/// The set of arguments for DomainConfiguration.
class DomainConfigurationArgs {
  /// An enumerated string that speciﬁes the application-layer protocol. Valid values are `SECURE_MQTT`, `MQTT_WSS`, `HTTPS` or `DEFAULT`.
  final Input<String>? applicationProtocol;

  /// An enumerated string that speciﬁes the authentication type. Valid values are `CUSTOM_AUTH_X509`, `CUSTOM_AUTH`, `AWS_X509`, `AWS_SIGV4` or `DEFAULT`.
  final Input<String>? authenticationType;

  /// An object that specifies the authorization service for a domain. See the <span pulumi-lang-nodejs="`authorizerConfig`" pulumi-lang-dotnet="`AuthorizerConfig`" pulumi-lang-go="`authorizerConfig`" pulumi-lang-python="`authorizer_config`" pulumi-lang-yaml="`authorizerConfig`" pulumi-lang-java="`authorizerConfig`">`authorizer_config`</span> Block below for details.
  final Input<DomainConfigurationAuthorizerConfig>? authorizerConfig;

  /// Fully-qualified domain name.
  final Input<String>? domainName;

  /// The name of the domain configuration. This value must be unique to a region.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for Amazon Web Services-managed domains. When using a custom <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span>, the cert must include it.
  final Input<List<String>>? serverCertificateArns;

  /// The type of service delivered by the endpoint. Note: Amazon Web Services IoT Core currently supports only the `DATA` service type.
  final Input<String>? serviceType;

  /// The status to which the domain configuration should be set. Valid values are `ENABLED` and `DISABLED`.
  final Input<String>? status;

  /// Map of tags to assign to this resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// An object that specifies the TLS configuration for a domain. See the <span pulumi-lang-nodejs="`tlsConfig`" pulumi-lang-dotnet="`TlsConfig`" pulumi-lang-go="`tlsConfig`" pulumi-lang-python="`tls_config`" pulumi-lang-yaml="`tlsConfig`" pulumi-lang-java="`tlsConfig`">`tls_config`</span> Block below for details.
  final Input<DomainConfigurationTlsConfig>? tlsConfig;

  /// The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for Amazon Web Services-managed domains.
  final Input<String>? validationCertificateArn;

  DomainConfigurationArgs({
    this.applicationProtocol,
    this.authenticationType,
    this.authorizerConfig,
    this.domainName,
    this.name,
    this.region,
    this.serverCertificateArns,
    this.serviceType,
    this.status,
    this.tags,
    this.tlsConfig,
    this.validationCertificateArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationProtocolValue = applicationProtocol;
    if (applicationProtocolValue != null) {
      map['applicationProtocol'] = applicationProtocolValue;
    }
    final authenticationTypeValue = authenticationType;
    if (authenticationTypeValue != null) {
      map['authenticationType'] = authenticationTypeValue;
    }
    final authorizerConfigValue = authorizerConfig;
    if (authorizerConfigValue != null) {
      map['authorizerConfig'] = Input.mapOptionalInputValue<
              DomainConfigurationAuthorizerConfig, Map<String, dynamic>>(
          authorizerConfigValue, (value) => value.toMap());
    }
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serverCertificateArnsValue = serverCertificateArns;
    if (serverCertificateArnsValue != null) {
      map['serverCertificateArns'] = serverCertificateArnsValue;
    }
    final serviceTypeValue = serviceType;
    if (serviceTypeValue != null) {
      map['serviceType'] = serviceTypeValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tlsConfigValue = tlsConfig;
    if (tlsConfigValue != null) {
      map['tlsConfig'] = Input.mapOptionalInputValue<
          DomainConfigurationTlsConfig,
          Map<String, dynamic>>(tlsConfigValue, (value) => value.toMap());
    }
    final validationCertificateArnValue = validationCertificateArn;
    if (validationCertificateArnValue != null) {
      map['validationCertificateArn'] = validationCertificateArnValue;
    }
    return map;
  }

  factory DomainConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return DomainConfigurationArgs(
      applicationProtocol:
          Input.asOptionalInput<String>(map['applicationProtocol']),
      authenticationType:
          Input.asOptionalInput<String>(map['authenticationType']),
      authorizerConfig:
          Input.asOptionalInput<DomainConfigurationAuthorizerConfig>(
              map['authorizerConfig']),
      domainName: Input.asOptionalInput<String>(map['domainName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serverCertificateArns:
          Input.asOptionalInput<List<String>>(map['serverCertificateArns']),
      serviceType: Input.asOptionalInput<String>(map['serviceType']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tlsConfig:
          Input.asOptionalInput<DomainConfigurationTlsConfig>(map['tlsConfig']),
      validationCertificateArn:
          Input.asOptionalInput<String>(map['validationCertificateArn']),
    );
  }
}
