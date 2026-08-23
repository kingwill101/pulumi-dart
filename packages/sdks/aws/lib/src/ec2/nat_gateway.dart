import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_args.dart';
import 'nat_gateway_state.dart';

/// Provides a resource to create a VPC NAT Gateway.
///
/// &gt; **WARNING:** You should not use the `aws.ec2.NatGateway` resource that has `secondaryAllocationIds` in conjunction with an `aws.ec2.NatGatewayEipAssociation` resource. Doing so may cause perpetual differences, and result in associations being overwritten.
///
/// ## Example Usage
///
/// ### Public NAT
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NatGateway("example", {
///     allocationId: exampleAwsEip.id,
///     subnetId: exampleAwsSubnet.id,
///     tags: {
///         Name: "gw NAT",
///     },
/// }, {
///     dependsOn: [exampleAwsInternetGateway],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NatGateway("example",
///     allocation_id=example_aws_eip["id"],
///     subnet_id=example_aws_subnet["id"],
///     tags={
///         "Name": "gw NAT",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_internet_gateway]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NatGateway("example", new()
///     {
///         AllocationId = exampleAwsEip.Id,
///         SubnetId = exampleAwsSubnet.Id,
///         Tags =
///         {
///             { "Name", "gw NAT" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsInternetGateway,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewNatGateway(ctx, "example", &ec2.NatGatewayArgs{
/// 			AllocationId: pulumi.Any(exampleAwsEip.Id),
/// 			SubnetId:     pulumi.Any(exampleAwsSubnet.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("gw NAT"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsInternetGateway,
/// 		}))
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
/// resource "aws_ec2_natgateway" "example" {
///   depends_on    = [exampleAwsInternetGateway]
///   allocation_id = exampleAwsEip.id
///   subnet_id     = exampleAwsSubnet.id
///   tags = {
///     "Name" = "gw NAT"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new NatGateway("example", NatGatewayArgs.builder()
///             .allocationId(exampleAwsEip.id())
///             .subnetId(exampleAwsSubnet.id())
///             .tags(Map.of("Name", "gw NAT"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsInternetGateway)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NatGateway
///     properties:
///       allocationId: ${exampleAwsEip.id}
///       subnetId: ${exampleAwsSubnet.id}
///       tags:
///         Name: gw NAT
///     options:
///       dependsOn:
///         - ${exampleAwsInternetGateway}
/// ```
///
///
/// ### Public NAT with Secondary Private IP Addresses
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NatGateway("example", {
///     allocationId: exampleAwsEip.id,
///     subnetId: exampleAwsSubnet.id,
///     secondaryAllocationIds: [secondary.id],
///     secondaryPrivateIpAddresses: ["10.0.1.5"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NatGateway("example",
///     allocation_id=example_aws_eip["id"],
///     subnet_id=example_aws_subnet["id"],
///     secondary_allocation_ids=[secondary["id"]],
///     secondary_private_ip_addresses=["10.0.1.5"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NatGateway("example", new()
///     {
///         AllocationId = exampleAwsEip.Id,
///         SubnetId = exampleAwsSubnet.Id,
///         SecondaryAllocationIds = new[]
///         {
///             secondary.Id,
///         },
///         SecondaryPrivateIpAddresses = new[]
///         {
///             "10.0.1.5",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewNatGateway(ctx, "example", &ec2.NatGatewayArgs{
/// 			AllocationId: pulumi.Any(exampleAwsEip.Id),
/// 			SubnetId:     pulumi.Any(exampleAwsSubnet.Id),
/// 			SecondaryAllocationIds: pulumi.StringArray{
/// 				secondary.Id,
/// 			},
/// 			SecondaryPrivateIpAddresses: pulumi.StringArray{
/// 				pulumi.String("10.0.1.5"),
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
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_natgateway" "example" {
///   allocation_id                  = exampleAwsEip.id
///   subnet_id                      = exampleAwsSubnet.id
///   secondary_allocation_ids       = [secondary.id]
///   secondary_private_ip_addresses = ["10.0.1.5"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
///         var example = new NatGateway("example", NatGatewayArgs.builder()
///             .allocationId(exampleAwsEip.id())
///             .subnetId(exampleAwsSubnet.id())
///             .secondaryAllocationIds(secondary.id())
///             .secondaryPrivateIpAddresses("10.0.1.5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NatGateway
///     properties:
///       allocationId: ${exampleAwsEip.id}
///       subnetId: ${exampleAwsSubnet.id}
///       secondaryAllocationIds:
///         - ${secondary.id}
///       secondaryPrivateIpAddresses:
///         - 10.0.1.5
/// ```
///
///
/// ### Private NAT
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NatGateway("example", {
///     connectivityType: "private",
///     subnetId: exampleAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NatGateway("example",
///     connectivity_type="private",
///     subnet_id=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NatGateway("example", new()
///     {
///         ConnectivityType = "private",
///         SubnetId = exampleAwsSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewNatGateway(ctx, "example", &ec2.NatGatewayArgs{
/// 			ConnectivityType: pulumi.String("private"),
/// 			SubnetId:         pulumi.Any(exampleAwsSubnet.Id),
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
/// resource "aws_ec2_natgateway" "example" {
///   connectivity_type = "private"
///   subnet_id         = exampleAwsSubnet.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
///         var example = new NatGateway("example", NatGatewayArgs.builder()
///             .connectivityType("private")
///             .subnetId(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NatGateway
///     properties:
///       connectivityType: private
///       subnetId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ### Private NAT with Secondary Private IP Addresses
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.NatGateway("example", {
///     connectivityType: "private",
///     subnetId: exampleAwsSubnet.id,
///     secondaryPrivateIpAddressCount: 7,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.NatGateway("example",
///     connectivity_type="private",
///     subnet_id=example_aws_subnet["id"],
///     secondary_private_ip_address_count=7)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.NatGateway("example", new()
///     {
///         ConnectivityType = "private",
///         SubnetId = exampleAwsSubnet.Id,
///         SecondaryPrivateIpAddressCount = 7,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewNatGateway(ctx, "example", &ec2.NatGatewayArgs{
/// 			ConnectivityType:               pulumi.String("private"),
/// 			SubnetId:                       pulumi.Any(exampleAwsSubnet.Id),
/// 			SecondaryPrivateIpAddressCount: pulumi.Int(7),
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
/// resource "aws_ec2_natgateway" "example" {
///   connectivity_type                  = "private"
///   subnet_id                          = exampleAwsSubnet.id
///   secondary_private_ip_address_count = 7
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
///         var example = new NatGateway("example", NatGatewayArgs.builder()
///             .connectivityType("private")
///             .subnetId(exampleAwsSubnet.id())
///             .secondaryPrivateIpAddressCount(7)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:NatGateway
///     properties:
///       connectivityType: private
///       subnetId: ${exampleAwsSubnet.id}
///       secondaryPrivateIpAddressCount: 7
/// ```
///
///
/// ### Regional NAT Gateway with auto mode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({});
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleInternetGateway = new aws.ec2.InternetGateway("example", {vpcId: example.id});
/// const exampleNatGateway = new aws.ec2.NatGateway("example", {
///     vpcId: example.id,
///     availabilityMode: "regional",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones()
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_internet_gateway = aws.ec2.InternetGateway("example", vpc_id=example.id)
/// example_nat_gateway = aws.ec2.NatGateway("example",
///     vpc_id=example.id,
///     availability_mode="regional")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke();
///
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleInternetGateway = new Aws.Ec2.InternetGateway("example", new()
///     {
///         VpcId = example.Id,
///     });
///
///     var exampleNatGateway = new Aws.Ec2.NatGateway("example", new()
///     {
///         VpcId = example.Id,
///         AvailabilityMode = "regional",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInternetGateway(ctx, "example", &ec2.InternetGatewayArgs{
/// 			VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewNatGateway(ctx, "example", &ec2.NatGatewayArgs{
/// 			VpcId:            example.ID().ToIDOutput().ToStringOutput(),
/// 			AvailabilityMode: pulumi.String("regional"),
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
/// data "aws_getavailabilityzones" "available" {
/// }
///
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_internetgateway" "example" {
///   vpc_id = aws_ec2_vpc.example.id
/// }
/// resource "aws_ec2_natgateway" "example" {
///   vpc_id            = aws_ec2_vpc.example.id
///   availability_mode = "regional"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.InternetGateway;
/// import com.pulumi.aws.ec2.InternetGatewayArgs;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .build());
///
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleInternetGateway = new InternetGateway("exampleInternetGateway", InternetGatewayArgs.builder()
///             .vpcId(example.id())
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .vpcId(example.id())
///             .availabilityMode("regional")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleInternetGateway:
///     type: aws:ec2:InternetGateway
///     name: example
///     properties:
///       vpcId: ${example.id}
///   exampleNatGateway:
///     type: aws:ec2:NatGateway
///     name: example
///     properties:
///       vpcId: ${example.id}
///       availabilityMode: regional
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments: {}
/// ```
///
///
/// ### Regional NAT Gateway with manual mode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({});
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleInternetGateway = new aws.ec2.InternetGateway("example", {vpcId: example.id});
/// const exampleEip: aws.ec2.Eip[] = [];
/// for (let range = 0; range < 3; range++) {
///     exampleEip.push(new aws.ec2.Eip(`example-${range}`, {domain: "vpc"}));
/// }
/// const exampleNatGateway = new aws.ec2.NatGateway("example", {
///     vpcId: example.id,
///     availabilityMode: "regional",
///     availabilityZoneAddresses: [
///         {
///             allocationIds: [exampleEip[0].id],
///             availabilityZone: available.then(available => available.names?.[0]),
///         },
///         {
///             allocationIds: [
///                 exampleEip[1].id,
///                 exampleEip[2].id,
///             ],
///             availabilityZone: available.then(available => available.names?.[1]),
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones()
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_internet_gateway = aws.ec2.InternetGateway("example", vpc_id=example.id)
/// example_eip: list[aws.ec2.Eip] = []
/// for example_eip_range in [{"value": i} for i in range(0, 3)]:
///     example_eip.append(aws.ec2.Eip(f"example-{example_eip_range['value']}", domain="vpc"))
/// example_nat_gateway = aws.ec2.NatGateway("example",
///     vpc_id=example.id,
///     availability_mode="regional",
///     availability_zone_addresses=[
///         {
///             "allocation_ids": [example_eip[0].id],
///             "availability_zone": available.names[0],
///         },
///         {
///             "allocation_ids": [
///                 example_eip[1].id,
///                 example_eip[2].id,
///             ],
///             "availability_zone": available.names[1],
///         },
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
///     var available = Aws.GetAvailabilityZones.Invoke();
///
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleInternetGateway = new Aws.Ec2.InternetGateway("example", new()
///     {
///         VpcId = example.Id,
///     });
///
///     var exampleEip = new List<Aws.Ec2.Eip>();
///     for (var rangeIndex = 0; rangeIndex < 3; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         exampleEip.Add(new Aws.Ec2.Eip($"example-{range.Value}", new()
///         {
///             Domain = "vpc",
///         }));
///     }
///     var exampleNatGateway = new Aws.Ec2.NatGateway("example", new()
///     {
///         VpcId = example.Id,
///         AvailabilityMode = "regional",
///         AvailabilityZoneAddresses = new[]
///         {
///             new Aws.Ec2.Inputs.NatGatewayAvailabilityZoneAddressArgs
///             {
///                 AllocationIds = new[]
///                 {
///                     exampleEip[0].Id,
///                 },
///                 AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///             },
///             new Aws.Ec2.Inputs.NatGatewayAvailabilityZoneAddressArgs
///             {
///                 AllocationIds = new[]
///                 {
///                     exampleEip[1].Id,
///                     exampleEip[2].Id,
///                 },
///                 AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewInternetGateway(ctx, "example", &ec2.InternetGatewayArgs{
/// 			VpcId: example.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var exampleEip []*ec2.Eip
/// 		for index := 0; index < 3; index++ {
/// 			key0 := index
/// 			_ := index
/// 			__res, err := ec2.NewEip(ctx, fmt.Sprintf("example-%v", key0), &ec2.EipArgs{
/// 				Domain: pulumi.String("vpc"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			exampleEip = append(exampleEip, __res)
/// 		}
/// 		_, err = ec2.NewNatGateway(ctx, "example", &ec2.NatGatewayArgs{
/// 			VpcId:            example.ID().ToIDOutput().ToStringOutput(),
/// 			AvailabilityMode: pulumi.String("regional"),
/// 			AvailabilityZoneAddresses: ec2.NatGatewayAvailabilityZoneAddressArray{
/// 				&ec2.NatGatewayAvailabilityZoneAddressArgs{
/// 					AllocationIds: pulumi.StringArray{
/// 						exampleEip[0].ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 					AvailabilityZone: pulumi.String(available.Names[0]),
/// 				},
/// 				&ec2.NatGatewayAvailabilityZoneAddressArgs{
/// 					AllocationIds: pulumi.StringArray{
/// 						exampleEip[1].ID().ToIDOutput().ToStringOutput(),
/// 						exampleEip[2].ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 					AvailabilityZone: pulumi.String(available.Names[1]),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getavailabilityzones" "available" {
/// }
///
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_internetgateway" "example" {
///   vpc_id = aws_ec2_vpc.example.id
/// }
/// resource "aws_ec2_eip" "example" {
///   count  = 3
///   domain = "vpc"
/// }
/// resource "aws_ec2_natgateway" "example" {
///   vpc_id            = aws_ec2_vpc.example.id
///   availability_mode = "regional"
///   availability_zone_addresses {
///     allocation_ids    = [aws_ec2_eip.example[0].id]
///     availability_zone = data.aws_getavailabilityzones.available.names[0]
///   }
///   availability_zone_addresses {
///     allocation_ids    = [aws_ec2_eip.example[1].id, aws_ec2_eip.example[2].id]
///     availability_zone = data.aws_getavailabilityzones.available.names[1]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.InternetGateway;
/// import com.pulumi.aws.ec2.InternetGatewayArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
/// import com.pulumi.aws.ec2.inputs.NatGatewayAvailabilityZoneAddressArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .build());
///
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleInternetGateway = new InternetGateway("exampleInternetGateway", InternetGatewayArgs.builder()
///             .vpcId(example.id())
///             .build());
///
///         for (var i = 0; i < 3; i++) {
///             new Eip("exampleEip-" + i, EipArgs.builder()
///                 .domain("vpc")
///                 .build());
///
///
/// }
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .vpcId(example.id())
///             .availabilityMode("regional")
///             .availabilityZoneAddresses(
///                 NatGatewayAvailabilityZoneAddressArgs.builder()
///                     .allocationIds(exampleEip[0].id())
///                     .availabilityZone(available.names()[0])
///                     .build(),
///                 NatGatewayAvailabilityZoneAddressArgs.builder()
///                     .allocationIds(
///                         exampleEip[1].id(),
///                         exampleEip[2].id())
///                     .availabilityZone(available.names()[1])
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleInternetGateway:
///     type: aws:ec2:InternetGateway
///     name: example
///     properties:
///       vpcId: ${example.id}
///   exampleEip:
///     type: aws:ec2:Eip
///     name: example
///     properties:
///       domain: vpc
///     options: {}
///   exampleNatGateway:
///     type: aws:ec2:NatGateway
///     name: example
///     properties:
///       vpcId: ${example.id}
///       availabilityMode: regional
///       availabilityZoneAddresses:
///         - allocationIds:
///             - ${exampleEip[0].id}
///           availabilityZone: ${available.names[0]}
///         - allocationIds:
///             - ${exampleEip[1].id}
///             - ${exampleEip[2].id}
///           availabilityZone: ${available.names[1]}
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the NAT Gateway.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import NAT Gateways using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/natGateway:NatGateway private_gw nat-05dba92075d71c408
/// ```
class NatGateway extends pulumi.CustomResource {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivityType` is set to `public` and `availabilityMode` is set to `zonal`. When `availabilityMode` is set to `regional`, this must not be set; instead, use the `availabilityZoneAddress` block to specify EIPs for each AZ.
  late final pulumi.Output<String?> allocationId;
  /// Association ID of the Elastic IP address.
  late final pulumi.Output<String> associationId;
  /// (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  late final pulumi.Output<String> autoProvisionZones;
  /// (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  late final pulumi.Output<String> autoScalingIps;
  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  late final pulumi.Output<String> availabilityMode;
  /// Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availabilityZoneAddress` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>?> availabilityZoneAddresses;
  /// Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availabilityMode` is set to `regional`, this must be set to `public`. Defaults to `public`.
  late final pulumi.Output<String?> connectivityType;
  /// ID of the network interface.
  late final pulumi.Output<String> networkInterfaceId;
  /// The private IPv4 address to assign to the NAT Gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  late final pulumi.Output<String> privateIp;
  /// Public IP address.
  late final pulumi.Output<String> publicIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// (regional NAT gateways only) Repeatable blocks for information about the IP addresses and network interface associated with the regional NAT gateway.
  late final pulumi.Output<List<Map<String, dynamic>>> regionalNatGatewayAddresses;
  late final pulumi.Output<String> regionalNatGatewayAutoMode;
  /// (regional NAT gateways only) ID of the automatically created route table.
  late final pulumi.Output<String> routeTableId;
  /// A list of secondary allocation EIP IDs for this NAT Gateway. To remove all secondary allocations an empty list should be specified.
  late final pulumi.Output<List<String>> secondaryAllocationIds;
  /// The number of secondary private IPv4 addresses you want to assign to the NAT Gateway.
  late final pulumi.Output<int> secondaryPrivateIpAddressCount;
  /// A list of secondary private IPv4 addresses to assign to the NAT Gateway. To remove all secondary private addresses an empty list should be specified.
  late final pulumi.Output<List<String>> secondaryPrivateIpAddresses;
  /// The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availabilityMode` is set to `zonal`. Must not be set when `availabilityMode` is set to `regional`.
  late final pulumi.Output<String?> subnetId;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// VPC ID where this NAT Gateway will be created. Required when `availabilityMode` is set to `regional`.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [NatGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGateway]. {@macro pulumi_ec2_nat_gateway_nat_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGateway(
    String name, {
    NatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocationId = registerOutput<String?>('allocationId');
    associationId = registerOutput<String>('associationId');
    autoProvisionZones = registerOutput<String>('autoProvisionZones');
    autoScalingIps = registerOutput<String>('autoScalingIps');
    availabilityMode = registerOutput<String>('availabilityMode');
    availabilityZoneAddresses = registerOutput<List<Map<String, dynamic>>?>('availabilityZoneAddresses');
    connectivityType = registerOutput<String?>('connectivityType');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    privateIp = registerOutput<String>('privateIp');
    publicIp = registerOutput<String>('publicIp');
    region = registerOutput<String>('region');
    regionalNatGatewayAddresses = registerOutput<List<Map<String, dynamic>>>('regionalNatGatewayAddresses');
    regionalNatGatewayAutoMode = registerOutput<String>('regionalNatGatewayAutoMode');
    routeTableId = registerOutput<String>('routeTableId');
    secondaryAllocationIds = registerOutput<List<String>>('secondaryAllocationIds');
    secondaryPrivateIpAddressCount = registerOutput<int>('secondaryPrivateIpAddressCount');
    secondaryPrivateIpAddresses = registerOutput<List<String>>('secondaryPrivateIpAddresses');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [NatGateway] resource's state with the given [name] and [id].
  static NatGateway get(
    String name,
    pulumi.Input<String> id, {
    NatGatewayState? state,
  }) {
    return NatGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocationId = registerOutput<String?>('allocationId');
    associationId = registerOutput<String>('associationId');
    autoProvisionZones = registerOutput<String>('autoProvisionZones');
    autoScalingIps = registerOutput<String>('autoScalingIps');
    availabilityMode = registerOutput<String>('availabilityMode');
    availabilityZoneAddresses = registerOutput<List<Map<String, dynamic>>?>('availabilityZoneAddresses');
    connectivityType = registerOutput<String?>('connectivityType');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    privateIp = registerOutput<String>('privateIp');
    publicIp = registerOutput<String>('publicIp');
    region = registerOutput<String>('region');
    regionalNatGatewayAddresses = registerOutput<List<Map<String, dynamic>>>('regionalNatGatewayAddresses');
    regionalNatGatewayAutoMode = registerOutput<String>('regionalNatGatewayAutoMode');
    routeTableId = registerOutput<String>('routeTableId');
    secondaryAllocationIds = registerOutput<List<String>>('secondaryAllocationIds');
    secondaryPrivateIpAddressCount = registerOutput<int>('secondaryPrivateIpAddressCount');
    secondaryPrivateIpAddresses = registerOutput<List<String>>('secondaryPrivateIpAddresses');
    subnetId = registerOutput<String?>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
