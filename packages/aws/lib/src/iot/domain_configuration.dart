import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_configuration_args.dart';
import 'domain_configuration_authorizer_config.dart';
import 'domain_configuration_tls_config.dart';

/// Creates and manages an AWS IoT domain configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const iot = new aws.iot.DomainConfiguration("iot", {
///     name: "iot-",
///     domainName: "iot.example.com",
///     serviceType: "DATA",
///     serverCertificateArns: [cert.arn],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// iot = aws.iot.DomainConfiguration("iot",
///     name="iot-",
///     domain_name="iot.example.com",
///     service_type="DATA",
///     server_certificate_arns=[cert["arn"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var iot = new Aws.Iot.DomainConfiguration("iot", new()
///     {
///         Name = "iot-",
///         DomainName = "iot.example.com",
///         ServiceType = "DATA",
///         ServerCertificateArns = new[]
///         {
///             cert.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.NewDomainConfiguration(ctx, "iot", &iot.DomainConfigurationArgs{
/// 			Name:        pulumi.String("iot-"),
/// 			DomainName:  pulumi.String("iot.example.com"),
/// 			ServiceType: pulumi.String("DATA"),
/// 			ServerCertificateArns: pulumi.StringArray{
/// 				cert.Arn,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var iot = new DomainConfiguration("iot", DomainConfigurationArgs.builder()
///             .name("iot-")
///             .domainName("iot.example.com")
///             .serviceType("DATA")
///             .serverCertificateArns(cert.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   iot:
///     type: aws:iot:DomainConfiguration
///     properties:
///       name: iot-
///       domainName: iot.example.com
///       serviceType: DATA
///       serverCertificateArns:
///         - ${cert.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import domain configurations using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/domainConfiguration:DomainConfiguration example example
/// ```
class DomainConfiguration extends pulumi.CustomResource {
  /// An enumerated string that speciﬁes the application-layer protocol. Valid values are `SECURE_MQTT`, `MQTT_WSS`, `HTTPS` or `DEFAULT`.
  late final pulumi.Output<String> applicationProtocol;
  /// The ARN of the domain configuration.
  late final pulumi.Output<String> arn;
  /// An enumerated string that speciﬁes the authentication type. Valid values are `CUSTOM_AUTH_X509`, `CUSTOM_AUTH`, `AWS_X509`, `AWS_SIGV4` or `DEFAULT`.
  late final pulumi.Output<String> authenticationType;
  /// An object that specifies the authorization service for a domain. See the `authorizer_config` Block below for details.
  late final pulumi.Output<DomainConfigurationAuthorizerConfig?> authorizerConfig;
  /// Fully-qualified domain name.
  late final pulumi.Output<String> domainName;
  /// The type of the domain.
  late final pulumi.Output<String> domainType;
  /// The name of the domain configuration. This value must be unique to a region.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ARNs of the certificates that IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. This value is not required for Amazon Web Services-managed domains. When using a custom `domain_name`, the cert must include it.
  late final pulumi.Output<List<String>?> serverCertificateArns;
  /// The type of service delivered by the endpoint. Note: Amazon Web Services IoT Core currently supports only the `DATA` service type.
  late final pulumi.Output<String?> serviceType;
  /// The status to which the domain configuration should be set. Valid values are `ENABLED` and `DISABLED`.
  late final pulumi.Output<String?> status;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// An object that specifies the TLS configuration for a domain. See the `tls_config` Block below for details.
  late final pulumi.Output<DomainConfigurationTlsConfig> tlsConfig;
  /// The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. This value is not required for Amazon Web Services-managed domains.
  late final pulumi.Output<String?> validationCertificateArn;

  /// Creates a new [DomainConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainConfiguration]. {@macro pulumi_iot_domain_configuration_domain_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainConfiguration(
    String name, {
    DomainConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/domainConfiguration:DomainConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationProtocol = registerOutput<String>('applicationProtocol');
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.authorizerConfig = registerOutput<DomainConfigurationAuthorizerConfig?>('authorizerConfig');
    this.domainName = registerOutput<String>('domainName');
    this.domainType = registerOutput<String>('domainType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serverCertificateArns = registerOutput<List<String>?>('serverCertificateArns');
    this.serviceType = registerOutput<String?>('serviceType');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tlsConfig = registerOutput<DomainConfigurationTlsConfig>('tlsConfig');
    this.validationCertificateArn = registerOutput<String?>('validationCertificateArn');
  }
}
