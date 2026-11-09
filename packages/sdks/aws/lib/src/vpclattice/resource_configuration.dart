import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_configuration_args.dart';
import 'resource_configuration_resource_configuration_definition.dart';
import 'resource_configuration_state.dart';
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
///     resourceConfigurationDefinition: {
///         dnsResource: {
///             domainName: "example.com",
///             ipAddressType: "IPV4",
///         },
///     },
///     name: "Example",
///     resourceGatewayIdentifier: exampleAwsVpclatticeResourceGateway.id,
///     portRanges: ["80"],
///     protocol: "TCP",
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
///     resource_configuration_definition={
///         "dns_resource": {
///             "domain_name": "example.com",
///             "ip_address_type": "IPV4",
///         },
///     },
///     name="Example",
///     resource_gateway_identifier=example_aws_vpclattice_resource_gateway["id"],
///     port_ranges=["80"],
///     protocol="TCP",
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
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             DnsResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs
///             {
///                 DomainName = "example.com",
///                 IpAddressType = "IPV4",
///             },
///         },
///         Name = "Example",
///         ResourceGatewayIdentifier = exampleAwsVpclatticeResourceGateway.Id,
///         PortRanges = new[]
///         {
///             "80",
///         },
///         Protocol = "TCP",
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
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				DnsResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs{
/// 					DomainName:    pulumi.String("example.com"),
/// 					IpAddressType: pulumi.String("IPV4"),
/// 				},
/// 			},
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(exampleAwsVpclatticeResourceGateway.Id),
/// 			PortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_resource_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_configuration_definition {
///     dns_resource {
///       domain_name     = "example.com"
///       ip_address_type = "IPV4"
///     }
///   }
///   name                        = "Example"
///   resource_gateway_identifier = exampleAwsVpclatticeResourceGateway.id
///   port_ranges                 = ["80"]
///   protocol                    = "TCP"
///   tags = {
///     "Environment" = "Example"
///   }
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
///         var example = new ResourceConfiguration("example", ResourceConfigurationArgs.builder()
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .dnsResource(ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs.builder()
///                     .domainName("example.com")
///                     .ipAddressType("IPV4")
///                     .build())
///                 .build())
///             .name("Example")
///             .resourceGatewayIdentifier(exampleAwsVpclatticeResourceGateway.get("id"))
///             .portRanges("80")
///             .protocol("TCP")
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
///       resourceConfigurationDefinition:
///         dnsResource:
///           domainName: example.com
///           ipAddressType: IPV4
///       name: Example
///       resourceGatewayIdentifier: ${exampleAwsVpclatticeResourceGateway.id}
///       portRanges:
///         - '80'
///       protocol: TCP
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
///     resourceConfigurationDefinition: {
///         ipResource: {
///             ipAddress: "10.0.0.1",
///         },
///     },
///     name: "Example",
///     resourceGatewayIdentifier: exampleAwsVpclatticeResourceGateway.id,
///     portRanges: ["80"],
///     protocol: "TCP",
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
///     resource_configuration_definition={
///         "ip_resource": {
///             "ip_address": "10.0.0.1",
///         },
///     },
///     name="Example",
///     resource_gateway_identifier=example_aws_vpclattice_resource_gateway["id"],
///     port_ranges=["80"],
///     protocol="TCP",
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
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             IpResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionIpResourceArgs
///             {
///                 IpAddress = "10.0.0.1",
///             },
///         },
///         Name = "Example",
///         ResourceGatewayIdentifier = exampleAwsVpclatticeResourceGateway.Id,
///         PortRanges = new[]
///         {
///             "80",
///         },
///         Protocol = "TCP",
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
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				IpResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionIpResourceArgs{
/// 					IpAddress: pulumi.String("10.0.0.1"),
/// 				},
/// 			},
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(exampleAwsVpclatticeResourceGateway.Id),
/// 			PortRanges: pulumi.StringArray{
/// 				pulumi.String("80"),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_resource_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_configuration_definition {
///     ip_resource {
///       ip_address = "10.0.0.1"
///     }
///   }
///   name                        = "Example"
///   resource_gateway_identifier = exampleAwsVpclatticeResourceGateway.id
///   port_ranges                 = ["80"]
///   protocol                    = "TCP"
///   tags = {
///     "Environment" = "Example"
///   }
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
///         var example = new ResourceConfiguration("example", ResourceConfigurationArgs.builder()
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .ipResource(ResourceConfigurationResourceConfigurationDefinitionIpResourceArgs.builder()
///                     .ipAddress("10.0.0.1")
///                     .build())
///                 .build())
///             .name("Example")
///             .resourceGatewayIdentifier(exampleAwsVpclatticeResourceGateway.get("id"))
///             .portRanges("80")
///             .protocol("TCP")
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
///       resourceConfigurationDefinition:
///         ipResource:
///           ipAddress: 10.0.0.1
///       name: Example
///       resourceGatewayIdentifier: ${exampleAwsVpclatticeResourceGateway.id}
///       portRanges:
///         - '80'
///       protocol: TCP
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
///     resourceConfigurationDefinition: {
///         dnsResource: {
///             domainName: "test.example.com",
///             ipAddressType: "IPV4",
///         },
///     },
///     name: "Example",
///     resourceGatewayIdentifier: exampleAwsVpclatticeResourceGateway.id,
///     customDomainName: "custom.example.com",
///     domainVerificationId: example.id,
///     portRanges: ["443"],
///     protocol: "TCP",
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
///     resource_configuration_definition={
///         "dns_resource": {
///             "domain_name": "test.example.com",
///             "ip_address_type": "IPV4",
///         },
///     },
///     name="Example",
///     resource_gateway_identifier=example_aws_vpclattice_resource_gateway["id"],
///     custom_domain_name="custom.example.com",
///     domain_verification_id=example.id,
///     port_ranges=["443"],
///     protocol="TCP",
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
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             DnsResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs
///             {
///                 DomainName = "test.example.com",
///                 IpAddressType = "IPV4",
///             },
///         },
///         Name = "Example",
///         ResourceGatewayIdentifier = exampleAwsVpclatticeResourceGateway.Id,
///         CustomDomainName = "custom.example.com",
///         DomainVerificationId = example.Id,
///         PortRanges = new[]
///         {
///             "443",
///         },
///         Protocol = "TCP",
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
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				DnsResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs{
/// 					DomainName:    pulumi.String("test.example.com"),
/// 					IpAddressType: pulumi.String("IPV4"),
/// 				},
/// 			},
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(exampleAwsVpclatticeResourceGateway.Id),
/// 			CustomDomainName:          pulumi.String("custom.example.com"),
/// 			DomainVerificationId:      example.ID(),
/// 			PortRanges: pulumi.StringArray{
/// 				pulumi.String("443"),
/// 			},
/// 			Protocol: pulumi.String("TCP"),
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
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_domain_verification" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   domain_name = "example.com"
/// }
/// resource "aws_vpclattice_resource_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_configuration_definition {
///     dns_resource {
///       domain_name     = "test.example.com"
///       ip_address_type = "IPV4"
///     }
///   }
///   name                        = "Example"
///   resource_gateway_identifier = exampleAwsVpclatticeResourceGateway.id
///   custom_domain_name          = "custom.example.com"
///   domain_verification_id      = aws_vpclattice_domain_verification.example.id
///   port_ranges                 = ["443"]
///   protocol                    = "TCP"
///   tags = {
///     "Environment" = "Example"
///   }
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
///         var example = new DomainVerification("example", DomainVerificationArgs.builder()
///             .domainName("example.com")
///             .build());
///
///         var exampleResourceConfiguration = new ResourceConfiguration("exampleResourceConfiguration", ResourceConfigurationArgs.builder()
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .dnsResource(ResourceConfigurationResourceConfigurationDefinitionDnsResourceArgs.builder()
///                     .domainName("test.example.com")
///                     .ipAddressType("IPV4")
///                     .build())
///                 .build())
///             .name("Example")
///             .resourceGatewayIdentifier(exampleAwsVpclatticeResourceGateway.get("id"))
///             .customDomainName("custom.example.com")
///             .domainVerificationId(example.id())
///             .portRanges("443")
///             .protocol("TCP")
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
///       resourceConfigurationDefinition:
///         dnsResource:
///           domainName: test.example.com
///           ipAddressType: IPV4
///       name: Example
///       resourceGatewayIdentifier: ${exampleAwsVpclatticeResourceGateway.id}
///       customDomainName: custom.example.com
///       domainVerificationId: ${example.id}
///       portRanges:
///         - '443'
///       protocol: TCP
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
///     resourceConfigurationDefinition: {
///         arnResource: {
///             arn: example.arn,
///         },
///     },
///     name: "Example",
///     resourceGatewayIdentifier: testAwsVpclatticeResourceGateway.id,
///     type: "ARN",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.vpclattice.ResourceConfiguration("test",
///     resource_configuration_definition={
///         "arn_resource": {
///             "arn": example["arn"],
///         },
///     },
///     name="Example",
///     resource_gateway_identifier=test_aws_vpclattice_resource_gateway["id"],
///     type="ARN")
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
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             ArnResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArnResourceArgs
///             {
///                 Arn = example.Arn,
///             },
///         },
///         Name = "Example",
///         ResourceGatewayIdentifier = testAwsVpclatticeResourceGateway.Id,
///         Type = "ARN",
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
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				ArnResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArnResourceArgs{
/// 					Arn: pulumi.Any(example.Arn),
/// 				},
/// 			},
/// 			Name:                      pulumi.String("Example"),
/// 			ResourceGatewayIdentifier: pulumi.Any(testAwsVpclatticeResourceGateway.Id),
/// 			Type:                      pulumi.String("ARN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_resource_configuration" "test" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_configuration_definition {
///     arn_resource {
///       arn = example.arn
///     }
///   }
///   name                        = "Example"
///   resource_gateway_identifier = testAwsVpclatticeResourceGateway.id
///   type                        = "ARN"
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
///         var test = new ResourceConfiguration("test", ResourceConfigurationArgs.builder()
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .arnResource(ResourceConfigurationResourceConfigurationDefinitionArnResourceArgs.builder()
///                     .arn(example.get("arn"))
///                     .build())
///                 .build())
///             .name("Example")
///             .resourceGatewayIdentifier(testAwsVpclatticeResourceGateway.get("id"))
///             .type("ARN")
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
///       resourceConfigurationDefinition:
///         arnResource:
///           arn: ${example.arn}
///       name: Example
///       resourceGatewayIdentifier: ${testAwsVpclatticeResourceGateway.id}
///       type: ARN
/// ```
///
///
/// ### CIDR Example
///
/// A `CIDR` resource configuration must use a resource gateway with `resourceConfigDnsResolution` set to `IN_VPC`. It cannot be associated with a service network or a resource endpoint and is consumed by a VPC endpoint of type `Tunnel`. See [Access CIDR ranges using AWS PrivateLink](https://docs.aws.amazon.com/vpc/latest/privatelink/privatelink-access-cidr-ranges.html) for details.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.ResourceGateway("example", {
///     name: "example",
///     vpcId: exampleAwsVpc.id,
///     subnetIds: [exampleAwsSubnet.id],
///     resourceConfigDnsResolution: "IN_VPC",
/// });
/// const exampleResourceConfiguration = new aws.vpclattice.ResourceConfiguration("example", {
///     resourceConfigurationDefinition: {
///         cidrResource: {
///             cidrRanges: [
///                 "10.0.0.0/16",
///                 "192.168.0.0/24",
///             ],
///         },
///     },
///     name: "example",
///     resourceGatewayIdentifier: example.id,
///     type: "CIDR",
///     protocol: "TCP_UDP",
///     portRanges: [
///         "53",
///         "443",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ResourceGateway("example",
///     name="example",
///     vpc_id=example_aws_vpc["id"],
///     subnet_ids=[example_aws_subnet["id"]],
///     resource_config_dns_resolution="IN_VPC")
/// example_resource_configuration = aws.vpclattice.ResourceConfiguration("example",
///     resource_configuration_definition={
///         "cidr_resource": {
///             "cidr_ranges": [
///                 "10.0.0.0/16",
///                 "192.168.0.0/24",
///             ],
///         },
///     },
///     name="example",
///     resource_gateway_identifier=example.id,
///     type="CIDR",
///     protocol="TCP_UDP",
///     port_ranges=[
///         "53",
///         "443",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.ResourceGateway("example", new()
///     {
///         Name = "example",
///         VpcId = exampleAwsVpc.Id,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         ResourceConfigDnsResolution = "IN_VPC",
///     });
///
///     var exampleResourceConfiguration = new Aws.VpcLattice.ResourceConfiguration("example", new()
///     {
///         ResourceConfigurationDefinition = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionArgs
///         {
///             CidrResource = new Aws.VpcLattice.Inputs.ResourceConfigurationResourceConfigurationDefinitionCidrResourceArgs
///             {
///                 CidrRanges = new[]
///                 {
///                     "10.0.0.0/16",
///                     "192.168.0.0/24",
///                 },
///             },
///         },
///         Name = "example",
///         ResourceGatewayIdentifier = example.Id,
///         Type = "CIDR",
///         Protocol = "TCP_UDP",
///         PortRanges = new[]
///         {
///             "53",
///             "443",
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
/// 		example, err := vpclattice.NewResourceGateway(ctx, "example", &vpclattice.ResourceGatewayArgs{
/// 			Name:  pulumi.String("example"),
/// 			VpcId: pulumi.Any(exampleAwsVpc.Id),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			ResourceConfigDnsResolution: pulumi.String("IN_VPC"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpclattice.NewResourceConfiguration(ctx, "example", &vpclattice.ResourceConfigurationArgs{
/// 			ResourceConfigurationDefinition: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionArgs{
/// 				CidrResource: &vpclattice.ResourceConfigurationResourceConfigurationDefinitionCidrResourceArgs{
/// 					CidrRanges: pulumi.StringArray{
/// 						pulumi.String("10.0.0.0/16"),
/// 						pulumi.String("192.168.0.0/24"),
/// 					},
/// 				},
/// 			},
/// 			Name:                      pulumi.String("example"),
/// 			ResourceGatewayIdentifier: example.ID(),
/// 			Type:                      pulumi.String("CIDR"),
/// 			Protocol:                  pulumi.String("TCP_UDP"),
/// 			PortRanges: pulumi.StringArray{
/// 				pulumi.String("53"),
/// 				pulumi.String("443"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_vpclattice_resource_gateway" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                           = "example"
///   vpc_id                         = exampleAwsVpc.id
///   subnet_ids                     = [exampleAwsSubnet.id]
///   resource_config_dns_resolution = "IN_VPC"
/// }
/// resource "aws_vpclattice_resource_configuration" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_configuration_definition {
///     cidr_resource {
///       cidr_ranges = ["10.0.0.0/16", "192.168.0.0/24"]
///     }
///   }
///   name                        = "example"
///   resource_gateway_identifier = aws_vpclattice_resource_gateway.example.id
///   type                        = "CIDR"
///   protocol                    = "TCP_UDP"
///   port_ranges                 = ["53", "443"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.vpclattice.ResourceGateway;
/// import com.pulumi.aws.vpclattice.ResourceGatewayArgs;
/// import com.pulumi.aws.vpclattice.ResourceConfiguration;
/// import com.pulumi.aws.vpclattice.ResourceConfigurationArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionArgs;
/// import com.pulumi.aws.vpclattice.inputs.ResourceConfigurationResourceConfigurationDefinitionCidrResourceArgs;
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
///         var example = new ResourceGateway("example", ResourceGatewayArgs.builder()
///             .name("example")
///             .vpcId(exampleAwsVpc.get("id"))
///             .subnetIds(exampleAwsSubnet.get("id"))
///             .resourceConfigDnsResolution("IN_VPC")
///             .build());
///
///         var exampleResourceConfiguration = new ResourceConfiguration("exampleResourceConfiguration", ResourceConfigurationArgs.builder()
///             .resourceConfigurationDefinition(ResourceConfigurationResourceConfigurationDefinitionArgs.builder()
///                 .cidrResource(ResourceConfigurationResourceConfigurationDefinitionCidrResourceArgs.builder()
///                     .cidrRanges(
///                         "10.0.0.0/16",
///                         "192.168.0.0/24")
///                     .build())
///                 .build())
///             .name("example")
///             .resourceGatewayIdentifier(example.id())
///             .type("CIDR")
///             .protocol("TCP_UDP")
///             .portRanges(
///                 "53",
///                 "443")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:ResourceGateway
///     properties:
///       name: example
///       vpcId: ${exampleAwsVpc.id}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       resourceConfigDnsResolution: IN_VPC
///   exampleResourceConfiguration:
///     type: aws:vpclattice:ResourceConfiguration
///     name: example
///     properties:
///       resourceConfigurationDefinition:
///         cidrResource:
///           cidrRanges:
///             - 10.0.0.0/16
///             - 192.168.0.0/24
///       name: example
///       resourceGatewayIdentifier: ${example.id}
///       type: CIDR
///       protocol: TCP_UDP
///       portRanges:
///         - '53'
///         - '443'
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
  /// Custom domain name for your resource configuration. Additionally, provide a `domainVerificationId` to prove your ownership of a domain.
  late final pulumi.Output<String?> customDomainName;
  /// ARN of the domain verification.
  late final pulumi.Output<String> domainVerificationArn;
  /// Domain verification ID of your verified custom domain name. If you don't provide an ID, you must configure the DNS settings yourself.
  late final pulumi.Output<String> domainVerificationId;
  /// Domain verification status.
  late final pulumi.Output<String> domainVerificationStatus;
  /// Name for the Resource Configuration.
  late final pulumi.Output<String> name;
  /// Port ranges to access the Resource either single port `80` or range `80-81` range. For `CIDR` resource configurations, include port `53` to allow DNS.
  late final pulumi.Output<List<String>> portRanges;
  /// Protocol for the Resource. Valid values are `TCP` and `TCP_UDP`. `TCP_UDP` is only supported when `type` is `CIDR` (UDP is only supported for DNS). MUST be specified if `resourceConfigurationGroupId` is not.
  late final pulumi.Output<String> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Details of the Resource Configuration. See `resourceConfigurationDefinition` Block for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ResourceConfigurationResourceConfigurationDefinition?> resourceConfigurationDefinition;
  /// ID of Resource Configuration where `type` is `CHILD`.
  late final pulumi.Output<String?> resourceConfigurationGroupId;
  /// ID of the Resource Gateway used to access the resource. MUST be specified if `resourceConfigurationGroupId` is not.
  late final pulumi.Output<String> resourceGatewayIdentifier;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ResourceConfigurationTimeouts?> timeouts;
  /// Type of Resource Configuration. Must be one of `GROUP`, `CHILD`, `SINGLE`, `ARN`, `CIDR`. Use `CIDR` with a `cidrResource` block.
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
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    allowAssociationToShareableServiceNetwork = registerOutput<bool>('allowAssociationToShareableServiceNetwork');
    arn = registerOutput<String>('arn');
    customDomainName = registerOutput<String?>('customDomainName');
    domainVerificationArn = registerOutput<String>('domainVerificationArn');
    domainVerificationId = registerOutput<String>('domainVerificationId');
    domainVerificationStatus = registerOutput<String>('domainVerificationStatus');
    this.name = registerOutput<String>('name');
    portRanges = registerOutput<List<String>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    resourceConfigurationDefinition = registerOutput<ResourceConfigurationResourceConfigurationDefinition?>('resourceConfigurationDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceConfigurationResourceConfigurationDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceConfigurationGroupId = registerOutput<String?>('resourceConfigurationGroupId');
    resourceGatewayIdentifier = registerOutput<String>('resourceGatewayIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ResourceConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ResourceConfiguration] resource's state with the given [name] and [id].
  static ResourceConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ResourceConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/resourceConfiguration:ResourceConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowAssociationToShareableServiceNetwork = registerOutput<bool>('allowAssociationToShareableServiceNetwork');
    arn = registerOutput<String>('arn');
    customDomainName = registerOutput<String?>('customDomainName');
    domainVerificationArn = registerOutput<String>('domainVerificationArn');
    domainVerificationId = registerOutput<String>('domainVerificationId');
    domainVerificationStatus = registerOutput<String>('domainVerificationStatus');
    this.name = registerOutput<String>('name');
    portRanges = registerOutput<List<String>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    resourceConfigurationDefinition = registerOutput<ResourceConfigurationResourceConfigurationDefinition?>('resourceConfigurationDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceConfigurationResourceConfigurationDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceConfigurationGroupId = registerOutput<String?>('resourceConfigurationGroupId');
    resourceGatewayIdentifier = registerOutput<String>('resourceGatewayIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ResourceConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ResourceConfiguration] resource.
  ResourceConfiguration.reference(String urn)
    : super(
        'aws:vpclattice/resourceConfiguration:ResourceConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowAssociationToShareableServiceNetwork = registerOutput<bool>('allowAssociationToShareableServiceNetwork');
    arn = registerOutput<String>('arn');
    customDomainName = registerOutput<String?>('customDomainName');
    domainVerificationArn = registerOutput<String>('domainVerificationArn');
    domainVerificationId = registerOutput<String>('domainVerificationId');
    domainVerificationStatus = registerOutput<String>('domainVerificationStatus');
    this.name = registerOutput<String>('name');
    portRanges = registerOutput<List<String>>('portRanges', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    protocol = registerOutput<String>('protocol');
    region = registerOutput<String>('region');
    resourceConfigurationDefinition = registerOutput<ResourceConfigurationResourceConfigurationDefinition?>('resourceConfigurationDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceConfigurationResourceConfigurationDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceConfigurationGroupId = registerOutput<String?>('resourceConfigurationGroupId');
    resourceGatewayIdentifier = registerOutput<String>('resourceGatewayIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<ResourceConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
