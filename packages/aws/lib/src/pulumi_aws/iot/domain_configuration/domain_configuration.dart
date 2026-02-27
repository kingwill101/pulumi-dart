import 'package:pulumi/pulumi.dart';
import '../domain_configuration_authorizer_config/domain_configuration_authorizer_config.dart';
import '../domain_configuration_tls_config/domain_configuration_tls_config.dart';
import 'domain_configuration_args.dart';

/// Creates and manages an AWS IoT domain configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import domain configurations using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/domainConfiguration:DomainConfiguration example example
/// ```
class DomainConfiguration extends CustomResource {
  /// An enumerated string that speciﬁes the application-layer protocol. Valid values are `SECURE_MQTT`, `MQTT_WSS`, `HTTPS` or `DEFAULT`.
  late final Output<String> applicationProtocol;

  /// The ARN of the domain configuration.
  late final Output<String> arn;

  /// An enumerated string that speciﬁes the authentication type. Valid values are `CUSTOM_AUTH_X509`, `CUSTOM_AUTH`, `AWS_X509`, `AWS_SIGV4` or `DEFAULT`.
  late final Output<String> authenticationType;

  /// An object that specifies the authorization service for a domain. See the `authorizer_config` Block below for details.
  late final Output<DomainConfigurationAuthorizerConfig?> authorizerConfig;

  /// Fully-qualified domain name.
  late final Output<String> domainName;

  /// The type of the domain.
  late final Output<String> domainType;

  /// The name of the domain configuration. This value must be unique to a region.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for Amazon Web Services-managed domains. When using a custom `domain_name`, the cert must include it.
  late final Output<List<String>?> serverCertificateArns;

  /// The type of service delivered by the endpoint. Note: Amazon Web Services IoT Core currently supports only the `DATA` service type.
  late final Output<String?> serviceType;

  /// The status to which the domain configuration should be set. Valid values are `ENABLED` and `DISABLED`.
  late final Output<String?> status;

  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// An object that specifies the TLS configuration for a domain. See the `tls_config` Block below for details.
  late final Output<DomainConfigurationTlsConfig> tlsConfig;

  /// The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for Amazon Web Services-managed domains.
  late final Output<String?> validationCertificateArn;

  DomainConfiguration(
    String name, {
    DomainConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iot/domainConfiguration:DomainConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationProtocol = registerOutput<String>('applicationProtocol');
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.authorizerConfig =
        registerOutput<DomainConfigurationAuthorizerConfig?>(
            'authorizerConfig');
    this.domainName = registerOutput<String>('domainName');
    this.domainType = registerOutput<String>('domainType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serverCertificateArns =
        registerOutput<List<String>?>('serverCertificateArns');
    this.serviceType = registerOutput<String?>('serviceType');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tlsConfig = registerOutput<DomainConfigurationTlsConfig>('tlsConfig');
    this.validationCertificateArn =
        registerOutput<String?>('validationCertificateArn');
  }
}
