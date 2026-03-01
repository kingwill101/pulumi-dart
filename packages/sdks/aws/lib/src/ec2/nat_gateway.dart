import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_args.dart';
import 'nat_gateway_availability_zone_address.dart';
import 'nat_gateway_regional_nat_gateway_address.dart';
import 'nat_gateway_state.dart';

/// Provides a resource to create a VPC NAT Gateway.
///
/// !> **WARNING:** You should not use the `aws.ec2.NatGateway` resource that has `secondary_allocation_ids` in conjunction with an `aws.ec2.NatGatewayEipAssociation` resource. Doing so may cause perpetual differences, and result in associations being overwritten.
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
/// 			VpcId: example.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewNatGateway(ctx, "example", &ec2.NatGatewayArgs{
/// 			VpcId:            example.ID(),
/// 			AvailabilityMode: pulumi.String("regional"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.InternetGateway;
/// import com.pulumi.aws.ec2.InternetGatewayArgs;
/// import com.pulumi.aws.ec2.NatGateway;
/// import com.pulumi.aws.ec2.NatGatewayArgs;
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
/// for (const range = {value: 0}; range.value < 3; range.value++) {
///     exampleEip.push(new aws.ec2.Eip(`example-${range.value}`, {domain: "vpc"}));
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
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones()
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_internet_gateway = aws.ec2.InternetGateway("example", vpc_id=example.id)
/// example_eip = []
/// for range in [{"value": i} for i in range(0, 3)]:
///     example_eip.append(aws.ec2.Eip(f"example-{range['value']}", domain="vpc"))
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
/// 			VpcId: example.ID(),
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
/// 			VpcId:            example.ID(),
/// 			AvailabilityMode: pulumi.String("regional"),
/// 			AvailabilityZoneAddresses: ec2.NatGatewayAvailabilityZoneAddressArray{
/// 				&ec2.NatGatewayAvailabilityZoneAddressArgs{
/// 					AllocationIds: pulumi.StringArray{
/// 						exampleEip[0].ID(),
/// 					},
/// 					AvailabilityZone: pulumi.String(available.Names[0]),
/// 				},
/// 				&ec2.NatGatewayAvailabilityZoneAddressArgs{
/// 					AllocationIds: pulumi.StringArray{
/// 						exampleEip[1].ID(),
/// 						exampleEip[2].ID(),
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
/// Using `pulumi import`, import NAT Gateways using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/natGateway:NatGateway private_gw nat-05dba92075d71c408
/// ```
class NatGateway extends pulumi.CustomResource {
  /// The Allocation ID of the Elastic IP address for the NAT Gateway. Required when `connectivity_type` is set to `public` and `availability_mode` is set to `zonal`. When `availability_mode` is set to `regional`, this must not be set; instead, use the `availability_zone_address` block to specify EIPs for each AZ.
  late final pulumi.Output<String?> allocationId;
  /// Association ID of the Elastic IP address.
  late final pulumi.Output<String> associationId;
  /// (regional NAT gateways only) Indicates whether AWS automatically manages AZ coverage.
  late final pulumi.Output<String> autoProvisionZones;
  /// (regional NAT gateways only) Indicates whether AWS automatically allocates additional Elastic IP addresses (EIPs) in an AZ when the NAT gateway needs more ports due to increased concurrent connections to a single destination from that AZ.
  late final pulumi.Output<String> autoScalingIps;
  /// Specifies whether to create a zonal (single-AZ) or regional (multi-AZ) NAT gateway. Valid values are `zonal` and `regional`. Defaults to `zonal`.
  late final pulumi.Output<String> availabilityMode;
  /// Repeatable configuration block for the Elastic IP addresses (EIPs) and availability zones for the regional NAT gateway. When not specified, the regional NAT gateway will automatically expand to new AZs and associate EIPs upon detection of an elastic network interface (auto mode). When specified, auto-expansion is disabled (manual mode). See `availability_zone_address` below for details.
  late final pulumi.Output<List<NatGatewayAvailabilityZoneAddress>?> availabilityZoneAddresses;
  /// Connectivity type for the NAT Gateway. Valid values are `private` and `public`. When `availability_mode` is set to `regional`, this must be set to `public`. Defaults to `public`.
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
  late final pulumi.Output<List<NatGatewayRegionalNatGatewayAddress>> regionalNatGatewayAddresses;
  late final pulumi.Output<String> regionalNatGatewayAutoMode;
  /// (regional NAT gateways only) ID of the automatically created route table.
  late final pulumi.Output<String> routeTableId;
  /// A list of secondary allocation EIP IDs for this NAT Gateway. To remove all secondary allocations an empty list should be specified.
  late final pulumi.Output<List<String>> secondaryAllocationIds;
  /// The number of secondary private IPv4 addresses you want to assign to the NAT Gateway.
  late final pulumi.Output<int> secondaryPrivateIpAddressCount;
  /// A list of secondary private IPv4 addresses to assign to the NAT Gateway. To remove all secondary private addresses an empty list should be specified.
  late final pulumi.Output<List<String>> secondaryPrivateIpAddresses;
  /// The Subnet ID of the subnet in which to place the NAT Gateway. Required when `availability_mode` is set to `zonal`. Must not be set when `availability_mode` is set to `regional`.
  late final pulumi.Output<String?> subnetId;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// VPC ID where this NAT Gateway will be created. Required when `availability_mode` is set to `regional`.
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
    this.allocationId = registerOutput<String?>('allocationId');
    this.associationId = registerOutput<String>('associationId');
    this.autoProvisionZones = registerOutput<String>('autoProvisionZones');
    this.autoScalingIps = registerOutput<String>('autoScalingIps');
    this.availabilityMode = registerOutput<String>('availabilityMode');
    this.availabilityZoneAddresses = registerOutput<List<NatGatewayAvailabilityZoneAddress>?>('availabilityZoneAddresses');
    this.connectivityType = registerOutput<String?>('connectivityType');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.privateIp = registerOutput<String>('privateIp');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
    this.regionalNatGatewayAddresses = registerOutput<List<NatGatewayRegionalNatGatewayAddress>>('regionalNatGatewayAddresses');
    this.regionalNatGatewayAutoMode = registerOutput<String>('regionalNatGatewayAutoMode');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.secondaryAllocationIds = registerOutput<List<String>>('secondaryAllocationIds');
    this.secondaryPrivateIpAddressCount = registerOutput<int>('secondaryPrivateIpAddressCount');
    this.secondaryPrivateIpAddresses = registerOutput<List<String>>('secondaryPrivateIpAddresses');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
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
    this.allocationId = registerOutput<String?>('allocationId');
    this.associationId = registerOutput<String>('associationId');
    this.autoProvisionZones = registerOutput<String>('autoProvisionZones');
    this.autoScalingIps = registerOutput<String>('autoScalingIps');
    this.availabilityMode = registerOutput<String>('availabilityMode');
    this.availabilityZoneAddresses = registerOutput<List<NatGatewayAvailabilityZoneAddress>?>('availabilityZoneAddresses');
    this.connectivityType = registerOutput<String?>('connectivityType');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.privateIp = registerOutput<String>('privateIp');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
    this.regionalNatGatewayAddresses = registerOutput<List<NatGatewayRegionalNatGatewayAddress>>('regionalNatGatewayAddresses');
    this.regionalNatGatewayAutoMode = registerOutput<String>('regionalNatGatewayAutoMode');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.secondaryAllocationIds = registerOutput<List<String>>('secondaryAllocationIds');
    this.secondaryPrivateIpAddressCount = registerOutput<int>('secondaryPrivateIpAddressCount');
    this.secondaryPrivateIpAddresses = registerOutput<List<String>>('secondaryPrivateIpAddresses');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
