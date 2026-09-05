import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_environment_args.dart';
import 'kx_environment_custom_dns_configuration.dart';
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "example" {
///   description             = "Sample KMS Key"
///   deletion_window_in_days = 7
/// }
/// resource "aws_finspace_kxenvironment" "example" {
///   name       = "my-tf-kx-environment"
///   kms_key_id = aws_kms_key.example.arn
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///     transitGatewayConfiguration: {
///         transitGatewayId: exampleTransitGateway.id,
///         routableCidrSpace: "100.64.0.0/26",
///     },
///     customDnsConfigurations: [{
///         customDnsServerName: "example.finspace.amazonaws.com",
///         customDnsServerIp: "10.0.0.76",
///     }],
///     name: "my-tf-kx-environment",
///     description: "Environment description",
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
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example", description="example")
/// example_env = aws.finspace.KxEnvironment("example_env",
///     transit_gateway_configuration={
///         "transit_gateway_id": example_transit_gateway.id,
///         "routable_cidr_space": "100.64.0.0/26",
///     },
///     custom_dns_configurations=[{
///         "custom_dns_server_name": "example.finspace.amazonaws.com",
///         "custom_dns_server_ip": "10.0.0.76",
///     }],
///     name="my-tf-kx-environment",
///     description="Environment description",
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
///     var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         Description = "example",
///     });
///
///     var exampleEnv = new Aws.FinSpace.KxEnvironment("example_env", new()
///     {
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
///         Name = "my-tf-kx-environment",
///         Description = "Environment description",
///         KmsKeyId = example.Arn,
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
/// 			TransitGatewayConfiguration: &finspace.KxEnvironmentTransitGatewayConfigurationArgs{
/// 				TransitGatewayId:  exampleTransitGateway.ID().ToIDOutput().ToStringOutput(),
/// 				RoutableCidrSpace: pulumi.String("100.64.0.0/26"),
/// 			},
/// 			CustomDnsConfigurations: finspace.KxEnvironmentCustomDnsConfigurationArray{
/// 				&finspace.KxEnvironmentCustomDnsConfigurationArgs{
/// 					CustomDnsServerName: pulumi.String("example.finspace.amazonaws.com"),
/// 					CustomDnsServerIp:   pulumi.String("10.0.0.76"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("my-tf-kx-environment"),
/// 			Description: pulumi.String("Environment description"),
/// 			KmsKeyId:    example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "example" {
///   description             = "Sample KMS Key"
///   deletion_window_in_days = 7
/// }
/// resource "aws_ec2transitgateway_transitgateway" "example" {
///   description = "example"
/// }
/// resource "aws_finspace_kxenvironment" "example_env" {
///   transit_gateway_configuration = {
///     transit_gateway_id  = aws_ec2transitgateway_transitgateway.example.id
///     routable_cidr_space = "100.64.0.0/26"
///   }
///   custom_dns_configurations {
///     custom_dns_server_name = "example.finspace.amazonaws.com"
///     custom_dns_server_ip   = "10.0.0.76"
///   }
///   name        = "my-tf-kx-environment"
///   description = "Environment description"
///   kms_key_id  = aws_kms_key.example.arn
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .transitGatewayConfiguration(KxEnvironmentTransitGatewayConfigurationArgs.builder()
///                 .transitGatewayId(exampleTransitGateway.id())
///                 .routableCidrSpace("100.64.0.0/26")
///                 .build())
///             .customDnsConfigurations(KxEnvironmentCustomDnsConfigurationArgs.builder()
///                 .customDnsServerName("example.finspace.amazonaws.com")
///                 .customDnsServerIp("10.0.0.76")
///                 .build())
///             .name("my-tf-kx-environment")
///             .description("Environment description")
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
///   exampleTransitGateway:
///     type: aws:ec2transitgateway:TransitGateway
///     name: example
///     properties:
///       description: example
///   exampleEnv:
///     type: aws:finspace:KxEnvironment
///     name: example_env
///     properties:
///       transitGatewayConfiguration:
///         transitGatewayId: ${exampleTransitGateway.id}
///         routableCidrSpace: 100.64.0.0/26
///       customDnsConfigurations:
///         - customDnsServerName: example.finspace.amazonaws.com
///           customDnsServerIp: 10.0.0.76
///       name: my-tf-kx-environment
///       description: Environment description
///       kmsKeyId: ${example.arn}
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
///     transitGatewayConfiguration: {
///         attachmentNetworkAclConfigurations: [{
///             portRange: {
///                 from: 53,
///                 to: 53,
///             },
///             icmpTypeCode: {
///                 type: -1,
///                 code: -1,
///             },
///             ruleNumber: 1,
///             protocol: "6",
///             ruleAction: "allow",
///             cidrBlock: "0.0.0.0/0",
///         }],
///         transitGatewayId: exampleTransitGateway.id,
///         routableCidrSpace: "100.64.0.0/26",
///     },
///     customDnsConfigurations: [{
///         customDnsServerName: "example.finspace.amazonaws.com",
///         customDnsServerIp: "10.0.0.76",
///     }],
///     name: "my-tf-kx-environment",
///     description: "Environment description",
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
/// example_transit_gateway = aws.ec2transitgateway.TransitGateway("example", description="example")
/// example_env = aws.finspace.KxEnvironment("example_env",
///     transit_gateway_configuration={
///         "attachment_network_acl_configurations": [{
///             "port_range": {
///                 "from_": 53,
///                 "to": 53,
///             },
///             "icmp_type_code": {
///                 "type": -1,
///                 "code": -1,
///             },
///             "rule_number": 1,
///             "protocol": "6",
///             "rule_action": "allow",
///             "cidr_block": "0.0.0.0/0",
///         }],
///         "transit_gateway_id": example_transit_gateway.id,
///         "routable_cidr_space": "100.64.0.0/26",
///     },
///     custom_dns_configurations=[{
///         "custom_dns_server_name": "example.finspace.amazonaws.com",
///         "custom_dns_server_ip": "10.0.0.76",
///     }],
///     name="my-tf-kx-environment",
///     description="Environment description",
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
///     var exampleTransitGateway = new Aws.Ec2TransitGateway.TransitGateway("example", new()
///     {
///         Description = "example",
///     });
///
///     var exampleEnv = new Aws.FinSpace.KxEnvironment("example_env", new()
///     {
///         TransitGatewayConfiguration = new Aws.FinSpace.Inputs.KxEnvironmentTransitGatewayConfigurationArgs
///         {
///             AttachmentNetworkAclConfigurations = new[]
///             {
///                 new Aws.FinSpace.Inputs.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArgs
///                 {
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
///                     RuleNumber = 1,
///                     Protocol = "6",
///                     RuleAction = "allow",
///                     CidrBlock = "0.0.0.0/0",
///                 },
///             },
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
///         Name = "my-tf-kx-environment",
///         Description = "Environment description",
///         KmsKeyId = example.Arn,
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
/// 			TransitGatewayConfiguration: &finspace.KxEnvironmentTransitGatewayConfigurationArgs{
/// 				AttachmentNetworkAclConfigurations: finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArray{
/// 					&finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArgs{
/// 						PortRange: &finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRangeArgs{
/// 							From: pulumi.Int(53),
/// 							To:   pulumi.Int(53),
/// 						},
/// 						IcmpTypeCode: &finspace.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCodeArgs{
/// 							Type: pulumi.Int(-1),
/// 							Code: pulumi.Int(-1),
/// 						},
/// 						RuleNumber: pulumi.Int(1),
/// 						Protocol:   pulumi.String("6"),
/// 						RuleAction: pulumi.String("allow"),
/// 						CidrBlock:  pulumi.String("0.0.0.0/0"),
/// 					},
/// 				},
/// 				TransitGatewayId:  exampleTransitGateway.ID().ToIDOutput().ToStringOutput(),
/// 				RoutableCidrSpace: pulumi.String("100.64.0.0/26"),
/// 			},
/// 			CustomDnsConfigurations: finspace.KxEnvironmentCustomDnsConfigurationArray{
/// 				&finspace.KxEnvironmentCustomDnsConfigurationArgs{
/// 					CustomDnsServerName: pulumi.String("example.finspace.amazonaws.com"),
/// 					CustomDnsServerIp:   pulumi.String("10.0.0.76"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("my-tf-kx-environment"),
/// 			Description: pulumi.String("Environment description"),
/// 			KmsKeyId:    example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "example" {
///   description             = "Sample KMS Key"
///   deletion_window_in_days = 7
/// }
/// resource "aws_ec2transitgateway_transitgateway" "example" {
///   description = "example"
/// }
/// resource "aws_finspace_kxenvironment" "example_env" {
///   transit_gateway_configuration = {
///     attachment_network_acl_configurations = [{
///       "portRange" = {
///         "from" = 53
///         "to"   = 53
///       }
///       "icmpTypeCode" = {
///         "type" = -1
///         "code" = -1
///       }
///       "ruleNumber" = 1
///       "protocol"   = "6"
///       "ruleAction" = "allow"
///       "cidrBlock"  = "0.0.0.0/0"
///     }]
///     transit_gateway_id  = aws_ec2transitgateway_transitgateway.example.id
///     routable_cidr_space = "100.64.0.0/26"
///   }
///   custom_dns_configurations {
///     custom_dns_server_name = "example.finspace.amazonaws.com"
///     custom_dns_server_ip   = "10.0.0.76"
///   }
///   name        = "my-tf-kx-environment"
///   description = "Environment description"
///   kms_key_id  = aws_kms_key.example.arn
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
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArgs;
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRangeArgs;
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCodeArgs;
/// import com.pulumi.aws.finspace.inputs.KxEnvironmentCustomDnsConfigurationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .transitGatewayConfiguration(KxEnvironmentTransitGatewayConfigurationArgs.builder()
///                 .attachmentNetworkAclConfigurations(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationArgs.builder()
///                     .portRange(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationPortRangeArgs.builder()
///                         .from(53)
///                         .to(53)
///                         .build())
///                     .icmpTypeCode(KxEnvironmentTransitGatewayConfigurationAttachmentNetworkAclConfigurationIcmpTypeCodeArgs.builder()
///                         .type(-1)
///                         .code(-1)
///                         .build())
///                     .ruleNumber(1)
///                     .protocol("6")
///                     .ruleAction("allow")
///                     .cidrBlock("0.0.0.0/0")
///                     .build())
///                 .transitGatewayId(exampleTransitGateway.id())
///                 .routableCidrSpace("100.64.0.0/26")
///                 .build())
///             .customDnsConfigurations(KxEnvironmentCustomDnsConfigurationArgs.builder()
///                 .customDnsServerName("example.finspace.amazonaws.com")
///                 .customDnsServerIp("10.0.0.76")
///                 .build())
///             .name("my-tf-kx-environment")
///             .description("Environment description")
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
///   exampleTransitGateway:
///     type: aws:ec2transitgateway:TransitGateway
///     name: example
///     properties:
///       description: example
///   exampleEnv:
///     type: aws:finspace:KxEnvironment
///     name: example_env
///     properties:
///       transitGatewayConfiguration:
///         attachmentNetworkAclConfigurations:
///           - portRange:
///               from: 53
///               to: 53
///             icmpTypeCode:
///               type: -1
///               code: -1
///             ruleNumber: 1
///             protocol: '6'
///             ruleAction: allow
///             cidrBlock: 0.0.0.0/0
///         transitGatewayId: ${exampleTransitGateway.id}
///         routableCidrSpace: 100.64.0.0/26
///       customDnsConfigurations:
///         - customDnsServerName: example.finspace.amazonaws.com
///           customDnsServerIp: 10.0.0.76
///       name: my-tf-kx-environment
///       description: Environment description
///       kmsKeyId: ${example.arn}
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
  /// ARN identifier of the KX environment.
  late final pulumi.Output<String> arn;
  /// AWS Availability Zone IDs that this environment is available in. Important when selecting VPC subnets to use in cluster creation.
  late final pulumi.Output<List<String>> availabilityZones;
  /// Timestamp at which the environment is created in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> createdTimestamp;
  /// List of DNS server name and server IP. This is used to set up Route-53 outbound resolvers. Defined below.
  late final pulumi.Output<List<KxEnvironmentCustomDnsConfiguration>?> customDnsConfigurations;
  /// Description for the KX environment.
  late final pulumi.Output<String?> description;
  /// Unique identifier for the AWS environment infrastructure account.
  late final pulumi.Output<String> infrastructureAccountId;
  /// KMS key ID to encrypt your data in the FinSpace environment.
  late final pulumi.Output<String> kmsKeyId;
  /// Last timestamp at which the environment was updated in FinSpace. Value determined as epoch time in seconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000.
  late final pulumi.Output<String> lastModifiedTimestamp;
  /// Name of the KX environment that you want to create.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of environment creation
  late final pulumi.Output<String> status;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Transit gateway and network configuration that is used to connect the KX environment to an internal network. Defined below.
  late final pulumi.Output<KxEnvironmentTransitGatewayConfiguration?> transitGatewayConfiguration;

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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdTimestamp = registerOutput<String>('createdTimestamp');
    customDnsConfigurations = registerOutput<List<KxEnvironmentCustomDnsConfiguration>?>('customDnsConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KxEnvironmentCustomDnsConfiguration>(guardedValue, (value) => KxEnvironmentCustomDnsConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    infrastructureAccountId = registerOutput<String>('infrastructureAccountId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayConfiguration = registerOutput<KxEnvironmentTransitGatewayConfiguration?>('transitGatewayConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxEnvironmentTransitGatewayConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [KxEnvironment] resource's state with the given [name] and [id].
  static KxEnvironment get(
    String name,
    pulumi.Input<String> id, {
    KxEnvironmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return KxEnvironment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    availabilityZones = registerOutput<List<String>>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdTimestamp = registerOutput<String>('createdTimestamp');
    customDnsConfigurations = registerOutput<List<KxEnvironmentCustomDnsConfiguration>?>('customDnsConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KxEnvironmentCustomDnsConfiguration>(guardedValue, (value) => KxEnvironmentCustomDnsConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    infrastructureAccountId = registerOutput<String>('infrastructureAccountId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayConfiguration = registerOutput<KxEnvironmentTransitGatewayConfiguration?>('transitGatewayConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxEnvironmentTransitGatewayConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [KxEnvironment] resource.
  KxEnvironment.reference(String urn)
    : super(
        'aws:finspace/kxEnvironment:KxEnvironment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    availabilityZones = registerOutput<List<String>>('availabilityZones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdTimestamp = registerOutput<String>('createdTimestamp');
    customDnsConfigurations = registerOutput<List<KxEnvironmentCustomDnsConfiguration>?>('customDnsConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KxEnvironmentCustomDnsConfiguration>(guardedValue, (value) => KxEnvironmentCustomDnsConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    infrastructureAccountId = registerOutput<String>('infrastructureAccountId');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    lastModifiedTimestamp = registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayConfiguration = registerOutput<KxEnvironmentTransitGatewayConfiguration?>('transitGatewayConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KxEnvironmentTransitGatewayConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
