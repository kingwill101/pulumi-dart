import 'package:pulumi/pulumi.dart';
import '../domain_configuration_authorizer_config/domain_configuration_authorizer_config.dart';
import '../domain_configuration_tls_config/domain_configuration_tls_config.dart';
import 'domain_configuration_args.dart';

/// Creates and manages an AWS IoT domain configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const iot = new aws.iot.DomainConfiguration("iot", {
/// name: "iot-",
/// domainName: "iot.example.com",
/// serviceType: "DATA",
/// serverCertificateArns: [cert.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// iot = aws.iot.DomainConfiguration("iot",
/// name="iot-",
/// domain_name="iot.example.com",
/// service_type="DATA",
/// server_certificate_arns=[cert["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var iot = new Aws.Iot.DomainConfiguration("iot", new()
/// {
/// Name = "iot-",
/// DomainName = "iot.example.com",
/// ServiceType = "DATA",
/// ServerCertificateArns = new[]
/// {
/// cert.Arn,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iot.NewDomainConfiguration(ctx, "iot", &iot.DomainConfigurationArgs{
/// Name:        pulumi.String("iot-"),
/// DomainName:  pulumi.String("iot.example.com"),
/// ServiceType: pulumi.String("DATA"),
/// ServerCertificateArns: pulumi.StringArray{
/// cert.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iot.DomainConfiguration;
/// import com.pulumi.aws.iot.DomainConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var iot = new DomainConfiguration("iot", DomainConfigurationArgs.builder()
/// .name("iot-")
/// .domainName("iot.example.com")
/// .serviceType("DATA")
/// .serverCertificateArns(cert.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// iot:
/// type: aws:iot:DomainConfiguration
/// properties:
/// name: iot-
/// domainName: iot.example.com
/// serviceType: DATA
/// serverCertificateArns:
/// - ${cert.arn}
/// ```
/// <!--End PulumiCodeChooser -->
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

  /// An object that specifies the authorization service for a domain. See the <span pulumi-lang-nodejs="`authorizerConfig`" pulumi-lang-dotnet="`AuthorizerConfig`" pulumi-lang-go="`authorizerConfig`" pulumi-lang-python="`authorizer_config`" pulumi-lang-yaml="`authorizerConfig`" pulumi-lang-java="`authorizerConfig`">`authorizer_config`</span> Block below for details.
  late final Output<DomainConfigurationAuthorizerConfig?> authorizerConfig;

  /// Fully-qualified domain name.
  late final Output<String> domainName;

  /// The type of the domain.
  late final Output<String> domainType;

  /// The name of the domain configuration. This value must be unique to a region.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for Amazon Web Services-managed domains. When using a custom <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span>, the cert must include it.
  late final Output<List<String>?> serverCertificateArns;

  /// The type of service delivered by the endpoint. Note: Amazon Web Services IoT Core currently supports only the `DATA` service type.
  late final Output<String?> serviceType;

  /// The status to which the domain configuration should be set. Valid values are `ENABLED` and `DISABLED`.
  late final Output<String?> status;

  /// Map of tags to assign to this resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// An object that specifies the TLS configuration for a domain. See the <span pulumi-lang-nodejs="`tlsConfig`" pulumi-lang-dotnet="`TlsConfig`" pulumi-lang-go="`tlsConfig`" pulumi-lang-python="`tls_config`" pulumi-lang-yaml="`tlsConfig`" pulumi-lang-java="`tlsConfig`">`tls_config`</span> Block below for details.
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
    this.applicationProtocol = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.authenticationType = Output.createUnknown<String>();
    this.authorizerConfig =
        Output.createUnknown<DomainConfigurationAuthorizerConfig?>();
    this.domainName = Output.createUnknown<String>();
    this.domainType = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serverCertificateArns = Output.createUnknown<List<String>?>();
    this.serviceType = Output.createUnknown<String?>();
    this.status = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tlsConfig = Output.createUnknown<DomainConfigurationTlsConfig>();
    this.validationCertificateArn = Output.createUnknown<String?>();
  }
}
