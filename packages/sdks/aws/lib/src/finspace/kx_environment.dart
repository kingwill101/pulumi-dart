import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_environment_args.dart';
import 'kx_environment_state.dart';
import 'kx_environment_transit_gateway_configuration.dart';

/// Resource for managing an AWS FinSpace Kx Environment.
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
/// const example = new aws.kms.Key("example", {
///     description: "Sample KMS Key",
///     deletionWindowInDays: 7,
/// });
/// const exampleKxEnvironment = new aws.finspace.KxEnvironment("example", {
///     name: "my-tf-kx-environment",
///     kmsKeyId: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="Sample KMS Key",
///     deletion_window_in_days=7)
/// example_kx_environment = aws.finspace.KxEnvironment("example",
///     name="my-tf-kx-environment",
///     kms_key_id=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "Sample KMS Key",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleKxEnvironment = new Aws.FinSpace.KxEnvironment("example", new()
///     {
///         Name = "my-tf-kx-environment",
///         KmsKeyId = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("Sample KMS Key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = finspace.NewKxEnvironment(ctx, "example", &finspace.KxEnvironmentArgs{
/// 			Name:     pulumi.String("my-tf-kx-environment"),
/// 			KmsKeyId: example.Arn,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.finspace.KxEnvironment;
/// import com.pulumi.aws.finspace.KxEnvironmentArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("Sample KMS Key")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleKxEnvironment = new KxEnvironment("exampleKxEnvironment", KxEnvironmentArgs.builder()
///             .name("my-tf-kx-environment")
///             .kmsKeyId(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: Sample KMS Key
///       deletionWindowInDays: 7
///   exampleKxEnvironment:
///     type: aws:finspace:KxEnvironment
///     name: example
///     properties:
///       name: my-tf-kx-environment
///       kmsKeyId: ${example.arn}
/// ```
///
///
/// ### With Transit Gateway Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "Sample KMS Key",
///     deletionWindowInDays: 7,
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {description: "example"});
/// const exampleEnv = new aws.finspace.KxEnvironment("example_env", {
///     name: "my-tf-kx-environment",
///     description: "Environment description",
///     kmsKeyId: example.arn,
///     transitGatewayConfiguration: {
///         transitGatewayId: exampleTransitGateway.id,
///         routableCidrSpace: "100.64.0.0/26",
///     },
///     customDnsConfigurations: [{
///         customDnsServerName: "example.finspace.amazonaws.com",
///         customDnsServerIp: "10.0.0.76",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="Sample KMS Key",
///     deletion_window_in_days=7)
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example", description="example")
/// example_env = aws.finspace.KxEnvironment("example_env",
///     name="my-tf-kx-environment",
///     description="Environment description",
///     kms_key_id=example.arn,
///     transit_gateway_configuration={
///         "transit_gateway_id": example_transit_gateway.id,
///         "routable_cidr_space": "100.64.0.0/26",
///     },
///     custom_dns_configurations=[{
///         "custom_dns_server_name": "example.finspace.amazonaws.com",
///         "custom_dns_server_ip": "10.0.0.76",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "Sample KMS Key",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         Description = "example",
///     });
///
///     var exampleEnv = new Aws.FinSpace.KxEnvironment("example_env", new()
///     {
///         Name = "my-tf-kx-environment",
///         Description = "Environment description",
///         KmsKeyId = example.Arn,
///         TransitGatewayConfiguration = new Aws.FinSpace.Inputs.KxEnvironmentTransitGatewayConfigurationArgs
///         {
///             TransitGatewayId = exampleTransitGateway.Id,
///             RoutableCidrSpace = "100.64.0.0/26",
///         },
///         CustomDnsConfigurations = new[]
///         {
///             new Aws.FinSpace.Inputs.KxEnvironmentCustomDnsConfigurationArgs
///             {
///                 CustomDnsServerName = "example.finspace.amazonaws.com",
///                 CustomDnsServerIp = "10.0.0.76",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("Sample KMS Key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// 			Description: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = finspace.NewKxEnvironment(ctx, "example_env", &finspace.KxEnvironmentArgs{
/// 			Name:        pulumi.String("my-tf-kx-environment"),
/// 			Description: pulumi.String("Environment description"),
/// 			KmsKeyId:    example.Arn,
/// 			TransitGatewayConfiguration: &finspace.KxEnvironmentTransitGatewayConfigurationArgs{
/// 				TransitGatewayId:  exampleTransitGateway.ID(),
/// 				RoutableCidrSpace: pulumi.String("100.64.0.0/26"),
/// 			},
/// 			CustomDnsConfigurations: finspace.KxEnvironmentCustomDnsConfigurationArray{
/// 				&finspace.KxEnvironmentCustomDnsConfigurationArgs{
/// 					CustomDnsServerName: pulumi.String("example.finspace.amazonaws.com"),
/// 					CustomDnsServerIp:   pulumi.String("10.0.0.76"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.finspace.KxEnvironment;
/// import com.pulumi.aws.finspace.KxEnvironmentArgs;
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentTransitGatewayConfigurationArgs;
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentCustomDnsConfigurationArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("Sample KMS Key")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleTransitGateway = new TransitGateway("exampleTransitGateway", TransitGatewayArgs.builder()
///             .description("example")
///             .build());
///
///         var exampleEnv = new KxEnvironment("exampleEnv", KxEnvironmentArgs.builder()
///             .name("my-tf-kx-environment")
///             .description("Environment description")
///             .kmsKeyId(example.arn())
///             .transitGatewayConfiguration(KxEnvironmentTransitGatewayConfigurationArgs.builder()
///                 .transitGatewayId(exampleTransitGateway.id())
///                 .routableCidrSpace("100.64.0.0/26")
///                 .build())
///             .customDnsConfigurations(KxEnvironmentCustomDnsConfigurationArgs.builder()
///                 .customDnsServerName("example.finspace.amazonaws.com")
///                 .customDnsServerIp("10.0.0.76")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: Sample KMS Key
///       deletionWindowInDays: 7
///   exampleTransitGateway:
///     type: aws:ec2transitgateway:TransitGateway
///     name: example
///     properties:
///       description: example
///   exampleEnv:
///     type: aws:finspace:KxEnvironment
///     name: example_env
///     properties:
///       name: my-tf-kx-environment
///       description: Environment description
///       kmsKeyId: ${example.arn}
///       transitGatewayConfiguration:
///         transitGatewayId: ${exampleTransitGateway.id}
///         routableCidrSpace: 100.64.0.0/26
///       customDnsConfigurations:
///         - customDnsServerName: example.finspace.amazonaws.com
///           customDnsServerIp: 10.0.0.76
/// ```
///
///
/// ### With Transit Gateway Attachment Network ACL Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "Sample KMS Key",
///     deletionWindowInDays: 7,
/// });
/// const exampleTransitGateway = new aws.ec2transitgateway.TransitGateway("example", {description: "example"});
/// const exampleEnv = new aws.finspace.KxEnvironment("example_env", {
///     name: "my-tf-kx-environment",
///     description: "Environment description",
///     kmsKeyId: example.arn,
///     transitGatewayConfiguration: {
///         transitGatewayId: exampleTransitGateway.id,
///         routableCidrSpace: "100.64.0.0/26",
///         attachmentNetworkAclConfigurations: [{
///             ruleNumber: 1,
///             protocol: "6",
///             ruleAction: "allow",
///             cidrBlock: "0.0.0.0/0",
///             portRange: {
///                 from: 53,
///                 to: 53,
///             },
///             icmpTypeCode: {
///                 type: -1,
///                 code: -1,
///             },
///         }],
///     },
///     customDnsConfigurations: [{
///         customDnsServerName: "example.finspace.amazonaws.com",
///         customDnsServerIp: "10.0.0.76",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="Sample KMS Key",
///     deletion_window_in_days=7)
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example", description="example")
/// example_env = aws.finspace.KxEnvironment("example_env",
///     name="my-tf-kx-environment",
///     description="Environment description",
///     kms_key_id=example.arn,
///     transit_gateway_configuration={
///         "transit_gateway_id": example_transit_gateway.id,
///         "routable_cidr_space": "100.64.0.0/26",
///         "attachment_network_acl_configurations": [{
///             "rule_number": 1,
///             "protocol": "6",
///             "rule_action": "allow",
///             "cidr_block": "0.0.0.0/0",
///             "port_range": {
///                 "from_": 53,
///                 "to": 53,
///             },
///             "icmp_type_code": {
///                 "type": -1,
///                 "code": -1,
///             },
///         }],
///     },
///     custom_dns_configurations=[{
///         "custom_dns_server_name": "example.finspace.amazonaws.com",
///         "custom_dns_server_ip": "10.0.0.76",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "Sample KMS Key",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         Description = "example",
///     });
///
///     var exampleEnv = new Aws.FinSpace.KxEnvironment("example_env", new()
///     {
///         Name = "my-tf-kx-environment",
///         Description = "Environment description",
///         KmsKeyId = example.Arn,
///         TransitGatewayConfiguration = new Aws.FinSpace.Inputs.KxEnvironmentTransitGatewayConfigurationArgs
///         {
///             TransitGatewayId = exampleTransitGateway.Id,
///             RoutableCidrSpace = "100.64.0.0/26",
///             AttachmentNetworkAclConfigurations = new[]
///             {
///                 new Aws.FinSpace.Inputs.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArgs
///                 {
///                     RuleNumber = 1,
///                     Protocol = "6",
///                     RuleAction = "allow",
///                     CidrBlock = "0.0.0.0/0",
///                     PortRange = new Aws.FinSpace.Inputs.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRangeArgs
///                     {
///                         From = 53,
///                         To = 53,
///                     },
///                     IcmpTypeCode = new Aws.FinSpace.Inputs.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCodeArgs
///                     {
///                         Type = -1,
///                         Code = -1,
///                     },
///                 },
///             },
///         },
///         CustomDnsConfigurations = new[]
///         {
///             new Aws.FinSpace.Inputs.KxEnvironmentCustomDnsConfigurationArgs
///             {
///                 CustomDnsServerName = "example.finspace.amazonaws.com",
///                 CustomDnsServerIp = "10.0.0.76",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/finspace"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("Sample KMS Key"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitGateway, err := ec2transitgateway.NewTransitGateway(ctx, "example", &ec2transitgateway.TransitGatewayArgs{
/// 			Description: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = finspace.NewKxEnvironment(ctx, "example_env", &finspace.KxEnvironmentArgs{
/// 			Name:        pulumi.String("my-tf-kx-environment"),
/// 			Description: pulumi.String("Environment description"),
/// 			KmsKeyId:    example.Arn,
/// 			TransitGatewayConfiguration: &finspace.KxEnvironmentTransitGatewayConfigurationArgs{
/// 				TransitGatewayId:  exampleTransitGateway.ID(),
/// 				RoutableCidrSpace: pulumi.String("100.64.0.0/26"),
/// 				AttachmentNetworkAclConfigurations: finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArray{
/// 					&finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArgs{
/// 						RuleNumber: pulumi.Int(1),
/// 						Protocol:   pulumi.String("6"),
/// 						RuleAction: pulumi.String("allow"),
/// 						CidrBlock:  pulumi.String("0.0.0.0/0"),
/// 						PortRange: &finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRangeArgs{
/// 							From: pulumi.Int(53),
/// 							To:   pulumi.Int(53),
/// 						},
/// 						IcmpTypeCode: &finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCodeArgs{
/// 							Type: pulumi.Int(-1),
/// 							Code: pulumi.Int(-1),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			CustomDnsConfigurations: finspace.KxEnvironmentCustomDnsConfigurationArray{
/// 				&finspace.KxEnvironmentCustomDnsConfigurationArgs{
/// 					CustomDnsServerName: pulumi.String("example.finspace.amazonaws.com"),
/// 					CustomDnsServerIp:   pulumi.String("10.0.0.76"),
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.ec2transitgateway.TransitGateway;
/// import com.pulumi.aws.ec2transitgateway.TransitGatewayArgs;
/// import com.pulumi.aws.finspace.KxEnvironment;
/// import com.pulumi.aws.finspace.KxEnvironmentArgs;
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentTransitGatewayConfigurationArgs;
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentCustomDnsConfigurationArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("Sample KMS Key")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleTransitGateway = new TransitGateway("exampleTransitGateway", TransitGatewayArgs.builder()
///             .description("example")
///             .build());
///
///         var exampleEnv = new KxEnvironment("exampleEnv", KxEnvironmentArgs.builder()
///             .name("my-tf-kx-environment")
///             .description("Environment description")
///             .kmsKeyId(example.arn())
///             .transitGatewayConfiguration(KxEnvironmentTransitGatewayConfigurationArgs.builder()
///                 .transitGatewayId(exampleTransitGateway.id())
///                 .routableCidrSpace("100.64.0.0/26")
///                 .attachmentNetworkAclConfigurations(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArgs.builder()
///                     .ruleNumber(1)
///                     .protocol("6")
///                     .ruleAction("allow")
///                     .cidrBlock("0.0.0.0/0")
///                     .portRange(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRangeArgs.builder()
///                         .from(53)
///                         .to(53)
///                         .build())
///                     .icmpTypeCode(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCodeArgs.builder()
///                         .type(-1)
///                         .code(-1)
///                         .build())
///                     .build())
///                 .build())
///             .customDnsConfigurations(KxEnvironmentCustomDnsConfigurationArgs.builder()
///                 .customDnsServerName("example.finspace.amazonaws.com")
///                 .customDnsServerIp("10.0.0.76")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: Sample KMS Key
///       deletionWindowInDays: 7
///   exampleTransitGateway:
///     type: aws:ec2transitgateway:TransitGateway
///     name: example
///     properties:
///       description: example
///   exampleEnv:
///     type: aws:finspace:KxEnvironment
///     name: example_env
///     properties:
///       name: my-tf-kx-environment
///       description: Environment description
///       kmsKeyId: ${example.arn}
///       transitGatewayConfiguration:
///         transitGatewayId: ${exampleTransitGateway.id}
///         routableCidrSpace: 100.64.0.0/26
///         attachmentNetworkAclConfigurations:
///           - ruleNumber: 1
///             protocol: '6'
///             ruleAction: allow
///             cidrBlock: 0.0.0.0/0
///             portRange:
///               from: 53
///               to: 53
///             icmpTypeCode:
///               type: -1
///               code: -1
///       customDnsConfigurations:
///         - customDnsServerName: example.finspace.amazonaws.com
///           customDnsServerIp: 10.0.0.76
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Environment using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxEnvironment:KxEnvironment example n3ceo7wqxoxcti5tujqwzs
/// ```
class KxEnvironment extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX environment.
  late final pulumi.Output<String> arn;

  /// AWS Availability Zone IDs that this environment is available in. Important when selecting VPC subnets to use in cluster creation.
  late final pulumi.Output<List<String>> availabilityZones;

  /// Timestamp at which the environment is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> createdTimestamp;

  /// List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customDnsConfigurations;

  /// Description for the KX environment.
  late final pulumi.Output<String?> description;

  /// Unique identifier for the AWS environment infrastructure account.
  late final pulumi.Output<String> infrastructureAccountId;

  /// KMS key ID to encrypt your data in the FinSpace environment.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> kmsKeyId;

  /// Last timestamp at which the environment was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;

  /// Name of the KX environment that you want to create.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of environment creation
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  late final pulumi.Output<KxEnvironmentTransitGatewayConfiguration?>
  transitGatewayConfiguration;

  /// Creates a new [KxEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KxEnvironment]. {@macro pulumi_finspace_kx_environment_kx_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KxEnvironment(
    String name, {
    KxEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:finspace/kxEnvironment:KxEnvironment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    customDnsConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'customDnsConfigurations',
    );
    description = registerOutput<String?>('description');
    infrastructureAccountId = registerOutput<String>('infrastructureAccountId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayConfiguration =
        registerOutput<KxEnvironmentTransitGatewayConfiguration?>(
          'transitGatewayConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KxEnvironmentTransitGatewayConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [KxEnvironment] resource's state with the given [name] and [id].
  static KxEnvironment get(
    String name,
    pulumi.Input<String> id, {
    KxEnvironmentState? state,
  }) {
    return KxEnvironment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KxEnvironment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:finspace/kxEnvironment:KxEnvironment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones');
    createdTimestamp = registerOutput<String>('createdTimestamp');
    customDnsConfigurations = registerOutput<List<Map<String, dynamic>>?>(
      'customDnsConfigurations',
    );
    description = registerOutput<String?>('description');
    infrastructureAccountId = registerOutput<String>('infrastructureAccountId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    transitGatewayConfiguration =
        registerOutput<KxEnvironmentTransitGatewayConfiguration?>(
          'transitGatewayConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return KxEnvironmentTransitGatewayConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
