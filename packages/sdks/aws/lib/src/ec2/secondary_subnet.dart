import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_subnet_args.dart';
import 'secondary_subnet_state.dart';
import 'secondary_subnet_timeouts.dart';

/// Provides an EC2 Secondary Subnet resource.
///
/// A secondary subnet is a subnet within a secondary network that provides high-performance networking capabilities for specialized workloads such as RDMA (Remote Direct Memory Access) applications.
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
/// const example = new aws.ec2.SecondaryNetwork("example", {
///     ipv4CidrBlock: "10.0.0.0/16",
///     networkType: "rdma",
///     tags: {
///         Name: "example-secondary-network",
///     },
/// });
/// const exampleSecondarySubnet = new aws.ec2.SecondarySubnet("example", {
///     secondaryNetworkId: example.id,
///     ipv4CidrBlock: "10.0.1.0/24",
///     availabilityZone: "us-west-2a",
///     tags: {
///         Name: "example-secondary-subnet",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecondaryNetwork("example",
///     ipv4_cidr_block="10.0.0.0/16",
///     network_type="rdma",
///     tags={
///         "Name": "example-secondary-network",
///     })
/// example_secondary_subnet = aws.ec2.SecondarySubnet("example",
///     secondary_network_id=example.id,
///     ipv4_cidr_block="10.0.1.0/24",
///     availability_zone="us-west-2a",
///     tags={
///         "Name": "example-secondary-subnet",
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
///     var example = new Aws.Ec2.SecondaryNetwork("example", new()
///     {
///         Ipv4CidrBlock = "10.0.0.0/16",
///         NetworkType = "rdma",
///         Tags =
///         {
///             { "Name", "example-secondary-network" },
///         },
///     });
///
///     var exampleSecondarySubnet = new Aws.Ec2.SecondarySubnet("example", new()
///     {
///         SecondaryNetworkId = example.Id,
///         Ipv4CidrBlock = "10.0.1.0/24",
///         AvailabilityZone = "us-west-2a",
///         Tags =
///         {
///             { "Name", "example-secondary-subnet" },
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
/// 		example, err := ec2.NewSecondaryNetwork(ctx, "example", &ec2.SecondaryNetworkArgs{
/// 			Ipv4CidrBlock: pulumi.String("10.0.0.0/16"),
/// 			NetworkType:   pulumi.String("rdma"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-secondary-network"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecondarySubnet(ctx, "example", &ec2.SecondarySubnetArgs{
/// 			SecondaryNetworkId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Ipv4CidrBlock:      pulumi.String("10.0.1.0/24"),
/// 			AvailabilityZone:   pulumi.String("us-west-2a"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-secondary-subnet"),
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
/// resource "aws_ec2_secondarynetwork" "example" {
///   ipv4_cidr_block = "10.0.0.0/16"
///   network_type    = "rdma"
///   tags = {
///     "Name" = "example-secondary-network"
///   }
/// }
/// resource "aws_ec2_secondarysubnet" "example" {
///   secondary_network_id = aws_ec2_secondarynetwork.example.id
///   ipv4_cidr_block      = "10.0.1.0/24"
///   availability_zone    = "us-west-2a"
///   tags = {
///     "Name" = "example-secondary-subnet"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.SecondaryNetwork;
/// import com.pulumi.aws.ec2.SecondaryNetworkArgs;
/// import com.pulumi.aws.ec2.SecondarySubnet;
/// import com.pulumi.aws.ec2.SecondarySubnetArgs;
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
///         var example = new SecondaryNetwork("example", SecondaryNetworkArgs.builder()
///             .ipv4CidrBlock("10.0.0.0/16")
///             .networkType("rdma")
///             .tags(Map.of("Name", "example-secondary-network"))
///             .build());
///
///         var exampleSecondarySubnet = new SecondarySubnet("exampleSecondarySubnet", SecondarySubnetArgs.builder()
///             .secondaryNetworkId(example.id())
///             .ipv4CidrBlock("10.0.1.0/24")
///             .availabilityZone("us-west-2a")
///             .tags(Map.of("Name", "example-secondary-subnet"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:SecondaryNetwork
///     properties:
///       ipv4CidrBlock: 10.0.0.0/16
///       networkType: rdma
///       tags:
///         Name: example-secondary-network
///   exampleSecondarySubnet:
///     type: aws:ec2:SecondarySubnet
///     name: example
///     properties:
///       secondaryNetworkId: ${example.id}
///       ipv4CidrBlock: 10.0.1.0/24
///       availabilityZone: us-west-2a
///       tags:
///         Name: example-secondary-subnet
/// ```
///
///
/// ### Using Availability Zone ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({
///     state: "available",
///     filters: [{
///         name: "opt-in-status",
///         values: ["opt-in-not-required"],
///     }],
/// });
/// const example = new aws.ec2.SecondaryNetwork("example", {
///     ipv4CidrBlock: "10.0.0.0/16",
///     networkType: "rdma",
///     tags: {
///         Name: "example-secondary-network",
///     },
/// });
/// const exampleSecondarySubnet = new aws.ec2.SecondarySubnet("example", {
///     secondaryNetworkId: example.id,
///     ipv4CidrBlock: "10.0.1.0/24",
///     availabilityZoneId: available.then(available => available.zoneIds?.[0]),
///     tags: {
///         Name: "example-secondary-subnet",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available",
///     filters=[{
///         "name": "opt-in-status",
///         "values": ["opt-in-not-required"],
///     }])
/// example = aws.ec2.SecondaryNetwork("example",
///     ipv4_cidr_block="10.0.0.0/16",
///     network_type="rdma",
///     tags={
///         "Name": "example-secondary-network",
///     })
/// example_secondary_subnet = aws.ec2.SecondarySubnet("example",
///     secondary_network_id=example.id,
///     ipv4_cidr_block="10.0.1.0/24",
///     availability_zone_id=available.zone_ids[0],
///     tags={
///         "Name": "example-secondary-subnet",
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
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///         Filters = new[]
///         {
///             new Aws.Inputs.GetAvailabilityZonesFilterInputArgs
///             {
///                 Name = "opt-in-status",
///                 Values = new[]
///                 {
///                     "opt-in-not-required",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Ec2.SecondaryNetwork("example", new()
///     {
///         Ipv4CidrBlock = "10.0.0.0/16",
///         NetworkType = "rdma",
///         Tags =
///         {
///             { "Name", "example-secondary-network" },
///         },
///     });
///
///     var exampleSecondarySubnet = new Aws.Ec2.SecondarySubnet("example", new()
///     {
///         SecondaryNetworkId = example.Id,
///         Ipv4CidrBlock = "10.0.1.0/24",
///         AvailabilityZoneId = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[0]),
///         Tags =
///         {
///             { "Name", "example-secondary-subnet" },
///         },
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
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 			Filters: []aws.GetAvailabilityZonesFilter{
/// 				{
/// 					Name: "opt-in-status",
/// 					Values: []string{
/// 						"opt-in-not-required",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := ec2.NewSecondaryNetwork(ctx, "example", &ec2.SecondaryNetworkArgs{
/// 			Ipv4CidrBlock: pulumi.String("10.0.0.0/16"),
/// 			NetworkType:   pulumi.String("rdma"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-secondary-network"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecondarySubnet(ctx, "example", &ec2.SecondarySubnetArgs{
/// 			SecondaryNetworkId: example.ID().ToIDOutput().ToStringOutput(),
/// 			Ipv4CidrBlock:      pulumi.String("10.0.1.0/24"),
/// 			AvailabilityZoneId: pulumi.String(available.ZoneIds[0]),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-secondary-subnet"),
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
///   state = "available"
///   filters {
///     name   = "opt-in-status"
///     values = ["opt-in-not-required"]
///   }
/// }
///
/// resource "aws_ec2_secondarynetwork" "example" {
///   ipv4_cidr_block = "10.0.0.0/16"
///   network_type    = "rdma"
///   tags = {
///     "Name" = "example-secondary-network"
///   }
/// }
/// resource "aws_ec2_secondarysubnet" "example" {
///   secondary_network_id = aws_ec2_secondarynetwork.example.id
///   ipv4_cidr_block      = "10.0.1.0/24"
///   availability_zone_id = data.aws_getavailabilityzones.available.zone_ids[0]
///   tags = {
///     "Name" = "example-secondary-subnet"
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
/// import com.pulumi.aws.inputs.GetAvailabilityZonesFilterArgs;
/// import com.pulumi.aws.ec2.SecondaryNetwork;
/// import com.pulumi.aws.ec2.SecondaryNetworkArgs;
/// import com.pulumi.aws.ec2.SecondarySubnet;
/// import com.pulumi.aws.ec2.SecondarySubnetArgs;
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
///             .state("available")
///             .filters(GetAvailabilityZonesFilterArgs.builder()
///                 .name("opt-in-status")
///                 .values("opt-in-not-required")
///                 .build())
///             .build());
///
///         var example = new SecondaryNetwork("example", SecondaryNetworkArgs.builder()
///             .ipv4CidrBlock("10.0.0.0/16")
///             .networkType("rdma")
///             .tags(Map.of("Name", "example-secondary-network"))
///             .build());
///
///         var exampleSecondarySubnet = new SecondarySubnet("exampleSecondarySubnet", SecondarySubnetArgs.builder()
///             .secondaryNetworkId(example.id())
///             .ipv4CidrBlock("10.0.1.0/24")
///             .availabilityZoneId(available.zoneIds()[0])
///             .tags(Map.of("Name", "example-secondary-subnet"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:SecondaryNetwork
///     properties:
///       ipv4CidrBlock: 10.0.0.0/16
///       networkType: rdma
///       tags:
///         Name: example-secondary-network
///   exampleSecondarySubnet:
///     type: aws:ec2:SecondarySubnet
///     name: example
///     properties:
///       secondaryNetworkId: ${example.id}
///       ipv4CidrBlock: 10.0.1.0/24
///       availabilityZoneId: ${available.zoneIds[0]}
///       tags:
///         Name: example-secondary-subnet
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
///         filters:
///           - name: opt-in-status
///             values:
///               - opt-in-not-required
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the secondary subnet.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Secondary Subnets using the secondary subnet ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/secondarySubnet:SecondarySubnet example ss-0123456789abcdef0
/// ```
class SecondarySubnet extends pulumi.CustomResource {
  /// ARN of the secondary subnet.
  late final pulumi.Output<String> arn;
  /// Availability Zone for the secondary subnet. Cannot be specified with `availabilityZoneId`.
  late final pulumi.Output<String> availabilityZone;
  /// ID of the Availability Zone for the secondary subnet. This option is preferred over `availabilityZone` as it provides a consistent identifier across AWS accounts. Cannot be specified with `availabilityZone`.
  late final pulumi.Output<String> availabilityZoneId;
  /// IPv4 CIDR block for the secondary subnet. The CIDR block size must be between `/12` and `/28`.
  late final pulumi.Output<String> ipv4CidrBlock;
  /// A list of IPv4 CIDR block associations for the secondary network.
  late final pulumi.Output<List<Map<String, dynamic>>> ipv4CidrBlockAssociations;
  /// ID of the AWS account that owns the secondary subnet.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the secondary network in which to create the secondary subnet.
  late final pulumi.Output<String> secondaryNetworkId;
  /// Type of the secondary network (e.g., `rdma`).
  late final pulumi.Output<String> secondaryNetworkType;
  /// ID of the secondary subnet.
  late final pulumi.Output<String> secondarySubnetId;
  /// State of the IPv4 CIDR block association.
  late final pulumi.Output<String> state;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<SecondarySubnetTimeouts?> timeouts;

  /// Creates a new [SecondarySubnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecondarySubnet]. {@macro pulumi_ec2_secondary_subnet_secondary_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecondarySubnet(
    String name, {
    SecondarySubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondarySubnet:SecondarySubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    ipv4CidrBlock = registerOutput<String>('ipv4CidrBlock');
    ipv4CidrBlockAssociations = registerOutput<List<Map<String, dynamic>>>('ipv4CidrBlockAssociations');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    secondaryNetworkId = registerOutput<String>('secondaryNetworkId');
    secondaryNetworkType = registerOutput<String>('secondaryNetworkType');
    secondarySubnetId = registerOutput<String>('secondarySubnetId');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<SecondarySubnetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecondarySubnetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SecondarySubnet] resource's state with the given [name] and [id].
  static SecondarySubnet get(
    String name,
    pulumi.Input<String> id, {
    SecondarySubnetState? state,
  }) {
    return SecondarySubnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecondarySubnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondarySubnet:SecondarySubnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    ipv4CidrBlock = registerOutput<String>('ipv4CidrBlock');
    ipv4CidrBlockAssociations = registerOutput<List<Map<String, dynamic>>>('ipv4CidrBlockAssociations');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    secondaryNetworkId = registerOutput<String>('secondaryNetworkId');
    secondaryNetworkType = registerOutput<String>('secondaryNetworkType');
    secondarySubnetId = registerOutput<String>('secondarySubnetId');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<SecondarySubnetTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecondarySubnetTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
