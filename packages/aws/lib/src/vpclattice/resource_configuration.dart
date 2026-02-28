import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_configuration_args.dart';
import 'resource_configuration_resource_configuration_definition.dart';
import 'resource_configuration_timeouts.dart';

/// Resource for managing an AWS VPC Lattice Resource Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ResourceConfiguration("example", {
///     name: "Example",
///     resourceGatewayIdentifier: exampleAwsVpclatticeResourceGateway.id,
///     portRanges: ["80"],
///     protocol: "TCP",
///     resourceConfigurationDefinition: {
///         dnsResource: {
///             domainName: "example.com",
///             ipAddressType: "IPV4",
///         },
///     },
///     tags: {
///         Environment: "Example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ResourceConfiguration("example",
///     name="Example",
///     resource_gateway_identifier=example_aws_vpclattice_resource_gateway["id"],
///     port_ranges=["80"],
///     protocol="TCP",
///     resource_configuration_definition={
///         "dns_resource": {
///             "domain_name": "example.com",
///             "ip_address_type": "IPV4",
///         },
///     },
///     tags={
///         "Environment": "Example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ResourceConfiguration("example", new()
///     {
///         Name = "Example",
///         ResourceGatewayIdentifier = exampleAwsVpclatticeResourceGateway.Id,
///         PortRanges = new[]
///         {
///             "80",
///         },
///         Protocol = "TCP",
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             DnsResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs
///             {
///                 DomainName = "example.com",
///                 IpAddressType = "IPV4",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "Example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewResourceConfiguration(ctx, "example", &vpclattice.ResourceConfigurationArgs{
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(exampleAwsVpclatticeResourceGateway.Id),
/// 			PortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				DnsResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs{
/// 					DomainName:    pulumi.String("example.com"),
/// 					IpAddressType: pulumi.String("IPV4"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Example"),
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
/// import com.pulumi.aws.vpclattice.ResourceConfiguration;
/// import com.pulumi.aws.vpclattice.ResourceConfigurationArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs;
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
///         var example = new ResourceConfiguration("example", ResourceConfigurationArgs.builder()
///             .name("Example")
///             .resourceGatewayIdentifier(exampleAwsVpclatticeResourceGateway.id())
///             .portRanges("80")
///             .protocol("TCP")
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .dnsResource(ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs.builder()
///                     .domainName("example.com")
///                     .ipAddressType("IPV4")
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "Example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ResourceConfiguration
///     properties:
///       name: Example
///       resourceGatewayIdentifier: ${exampleAwsVpclatticeResourceGateway.id}
///       portRanges:
///         - '80'
///       protocol: TCP
///       resourceConfigurationDefinition:
///         dnsResource:
///           domainName: example.com
///           ipAddressType: IPV4
///       tags:
///         Environment: Example
/// ```
///
///
/// ### IP Address Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ResourceConfiguration("example", {
///     name: "Example",
///     resourceGatewayIdentifier: exampleAwsVpclatticeResourceGateway.id,
///     portRanges: ["80"],
///     protocol: "TCP",
///     resourceConfigurationDefinition: {
///         ipResource: {
///             ipAddress: "10.0.0.1",
///         },
///     },
///     tags: {
///         Environment: "Example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ResourceConfiguration("example",
///     name="Example",
///     resource_gateway_identifier=example_aws_vpclattice_resource_gateway["id"],
///     port_ranges=["80"],
///     protocol="TCP",
///     resource_configuration_definition={
///         "ip_resource": {
///             "ip_address": "10.0.0.1",
///         },
///     },
///     tags={
///         "Environment": "Example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ResourceConfiguration("example", new()
///     {
///         Name = "Example",
///         ResourceGatewayIdentifier = exampleAwsVpclatticeResourceGateway.Id,
///         PortRanges = new[]
///         {
///             "80",
///         },
///         Protocol = "TCP",
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             IpResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionIpResourceArgs
///             {
///                 IpAddress = "10.0.0.1",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "Example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewResourceConfiguration(ctx, "example", &vpclattice.ResourceConfigurationArgs{
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(exampleAwsVpclatticeResourceGateway.Id),
/// 			PortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				IpResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionIpResourceArgs{
/// 					IpAddress: pulumi.String("10.0.0.1"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Example"),
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
/// import com.pulumi.aws.vpclattice.ResourceConfiguration;
/// import com.pulumi.aws.vpclattice.ResourceConfigurationArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionIpResourceArgs;
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
///         var example = new ResourceConfiguration("example", ResourceConfigurationArgs.builder()
///             .name("Example")
///             .resourceGatewayIdentifier(exampleAwsVpclatticeResourceGateway.id())
///             .portRanges("80")
///             .protocol("TCP")
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .ipResource(ResourceConfigurationResourceConfigurationDefinitionIpResourceArgs.builder()
///                     .ipAddress("10.0.0.1")
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "Example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ResourceConfiguration
///     properties:
///       name: Example
///       resourceGatewayIdentifier: ${exampleAwsVpclatticeResourceGateway.id}
///       portRanges:
///         - '80'
///       protocol: TCP
///       resourceConfigurationDefinition:
///         ipResource:
///           ipAddress: 10.0.0.1
///       tags:
///         Environment: Example
/// ```
///
///
/// ### With custom domain
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.DomainVerification("example", {domainName: "example.com"});
/// const exampleResourceConfiguration = new aws.vpclattice.ResourceConfiguration("example", {
///     name: "Example",
///     resourceGatewayIdentifier: exampleAwsVpclatticeResourceGateway.id,
///     customDomainName: "custom.example.com",
///     domainVerificationId: example.id,
///     portRanges: ["443"],
///     protocol: "TCP",
///     resourceConfigurationDefinition: {
///         dnsResource: {
///             domainName: "test.example.com",
///             ipAddressType: "IPV4",
///         },
///     },
///     tags: {
///         Environment: "Example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.DomainVerification("example", domain_name="example.com")
/// example_resource_configuration = aws.vpclattice.ResourceConfiguration("example",
///     name="Example",
///     resource_gateway_identifier=example_aws_vpclattice_resource_gateway["id"],
///     custom_domain_name="custom.example.com",
///     domain_verification_id=example.id,
///     port_ranges=["443"],
///     protocol="TCP",
///     resource_configuration_definition={
///         "dns_resource": {
///             "domain_name": "test.example.com",
///             "ip_address_type": "IPV4",
///         },
///     },
///     tags={
///         "Environment": "Example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.DomainVerification("example", new()
///     {
///         DomainName = "example.com",
///     });
///
///     var exampleResourceConfiguration = new Aws.VpcLattice.ResourceConfiguration("example", new()
///     {
///         Name = "Example",
///         ResourceGatewayIdentifier = exampleAwsVpclatticeResourceGateway.Id,
///         CustomDomainName = "custom.example.com",
///         DomainVerificationId = example.Id,
///         PortRanges = new[]
///         {
///             "443",
///         },
///         Protocol = "TCP",
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             DnsResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs
///             {
///                 DomainName = "test.example.com",
///                 IpAddressType = "IPV4",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "Example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpclattice.NewDomainVerification(ctx, "example", &vpclattice.DomainVerificationArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpclattice.NewResourceConfiguration(ctx, "example", &vpclattice.ResourceConfigurationArgs{
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(exampleAwsVpclatticeResourceGateway.Id),
/// 			CustomDomainName:          pulumi.String("custom.example.com"),
/// 			DomainVerificationId:      example.ID(),
/// 			PortRanges: pulumi.StringArray{
/// 				pulumi.String("443"),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				DnsResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs{
/// 					DomainName:    pulumi.String("test.example.com"),
/// 					IpAddressType: pulumi.String("IPV4"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Example"),
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
/// import com.pulumi.aws.vpclattice.DomainVerification;
/// import com.pulumi.aws.vpclattice.DomainVerificationArgs;
/// import com.pulumi.aws.vpclattice.ResourceConfiguration;
/// import com.pulumi.aws.vpclattice.ResourceConfigurationArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs;
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
///         var example = new DomainVerification("example", DomainVerificationArgs.builder()
///             .domainName("example.com")
///             .build());
///
///         var exampleResourceConfiguration = new ResourceConfiguration("exampleResourceConfiguration", ResourceConfigurationArgs.builder()
///             .name("Example")
///             .resourceGatewayIdentifier(exampleAwsVpclatticeResourceGateway.id())
///             .customDomainName("custom.example.com")
///             .domainVerificationId(example.id())
///             .portRanges("443")
///             .protocol("TCP")
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .dnsResource(ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs.builder()
///                     .domainName("test.example.com")
///                     .ipAddressType("IPV4")
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "Example"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:DomainVerification
///     properties:
///       domainName: example.com
///   exampleResourceConfiguration:
///     type: aws:vpclattice:ResourceConfiguration
///     name: example
///     properties:
///       name: Example
///       resourceGatewayIdentifier: ${exampleAwsVpclatticeResourceGateway.id}
///       customDomainName: custom.example.com
///       domainVerificationId: ${example.id}
///       portRanges:
///         - '443'
///       protocol: TCP
///       resourceConfigurationDefinition:
///         dnsResource:
///           domainName: test.example.com
///           ipAddressType: IPV4
///       tags:
///         Environment: Example
/// ```
///
///
/// ### ARN Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.vpclattice.ResourceConfiguration("test", {
///     name: "Example",
///     resourceGatewayIdentifier: testAwsVpclatticeResourceGateway.id,
///     type: "ARN",
///     resourceConfigurationDefinition: {
///         arnResource: {
///             arn: example.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpclattice.ResourceConfiguration("test",
///     name="Example",
///     resource_gateway_identifier=test_aws_vpclattice_resource_gateway["id"],
///     type="ARN",
///     resource_configuration_definition={
///         "arn_resource": {
///             "arn": example["arn"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.VpcLattice.ResourceConfiguration("test", new()
///     {
///         Name = "Example",
///         ResourceGatewayIdentifier = testAwsVpclatticeResourceGateway.Id,
///         Type = "ARN",
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             ArnResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArnResourceArgs
///             {
///                 Arn = example.Arn,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewResourceConfiguration(ctx, "test", &vpclattice.ResourceConfigurationArgs{
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(testAwsVpclatticeResourceGateway.Id),
/// 			Type:                      pulumi.String("ARN"),
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				ArnResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArnResourceArgs{
/// 					Arn: pulumi.Any(example.Arn),
/// 				},
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
/// import com.pulumi.aws.vpclattice.ResourceConfiguration;
/// import com.pulumi.aws.vpclattice.ResourceConfigurationArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionArnResourceArgs;
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
///         var test = new ResourceConfiguration("test", ResourceConfigurationArgs.builder()
///             .name("Example")
///             .resourceGatewayIdentifier(testAwsVpclatticeResourceGateway.id())
///             .type("ARN")
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .arnResource(ResourceConfigurationResourceConfigurationDefinitionArnResourceArgs.builder()
///                     .arn(example.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:vpclattice:ResourceConfiguration
///     properties:
///       name: Example
///       resourceGatewayIdentifier: ${testAwsVpclatticeResourceGateway.id}
///       type: ARN
///       resourceConfigurationDefinition:
///         arnResource:
///           arn: ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Resource Configuration using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/resourceConfiguration:ResourceConfiguration example rcfg-1234567890abcdef1
/// ```
class ResourceConfiguration extends pulumi.CustomResource {
  /// Allow or Deny the association of this resource to a shareable service network.
  late final pulumi.Output<bool> allowAssociationToShareableServiceNetwork;

  /// ARN of the resource gateway.
  late final pulumi.Output<String> arn;

  /// Custom domain name for your resource configuration. Additionally, provide a `domain_verification_id` to prove your ownership of a domain.
  late final pulumi.Output<String?> customDomainName;

  /// ARN of the domain verification.
  late final pulumi.Output<String> domainVerificationArn;

  /// The domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  late final pulumi.Output<String> domainVerificationId;

  /// Domain verification status.
  late final pulumi.Output<String> domainVerificationStatus;

  /// Name for the Resource Configuration.
  late final pulumi.Output<String> name;

  /// Port ranges to access the Resource either single port `80` or range `80-81` range.
  late final pulumi.Output<List<String>> portRanges;

  /// Protocol for the Resource `TCP` is currently the only supported value.  MUST be specified if `resource_configuration_group_id` is not.
  late final pulumi.Output<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Details of the Resource Configuration. See `resource_configuration_definition` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi
      .Output<ResourceConfigurationResourceConfigurationDefinition?>
      resourceConfigurationDefinition;

  /// ID of Resource Configuration where `type` is `CHILD`.
  late final pulumi.Output<String?> resourceConfigurationGroupId;

  /// ID of the Resource Gateway used to access the resource. MUST be specified if `resource_configuration_group_id` is not.
  late final pulumi.Output<String> resourceGatewayIdentifier;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ResourceConfigurationTimeouts?> timeouts;

  /// Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`.
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceConfiguration]. {@macro pulumi_vpclattice_resource_configuration_resource_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceConfiguration(
    String name, {
    ResourceConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourceConfiguration:ResourceConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowAssociationToShareableServiceNetwork =
        registerOutput<bool>('allowAssociationToShareableServiceNetwork');
    this.arn = registerOutput<String>('arn');
    this.customDomainName = registerOutput<String?>('customDomainName');
    this.domainVerificationArn =
        registerOutput<String>('domainVerificationArn');
    this.domainVerificationId = registerOutput<String>('domainVerificationId');
    this.domainVerificationStatus =
        registerOutput<String>('domainVerificationStatus');
    this.name = registerOutput<String>('name');
    this.portRanges = registerOutput<List<String>>('portRanges');
    this.protocol = registerOutput<String>('protocol');
    this.region = registerOutput<String>('region');
    this.resourceConfigurationDefinition =
        registerOutput<ResourceConfigurationResourceConfigurationDefinition?>(
            'resourceConfigurationDefinition');
    this.resourceConfigurationGroupId =
        registerOutput<String?>('resourceConfigurationGroupId');
    this.resourceGatewayIdentifier =
        registerOutput<String>('resourceGatewayIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ResourceConfigurationTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
  }
}
