import 'package:pulumi/pulumi.dart' as pulumi;
import 'secondary_network_args.dart';
import 'secondary_network_ipv4_cidr_block_association.dart';
import 'secondary_network_state.dart';
import 'secondary_network_timeouts.dart';

/// Provides an EC2 Secondary Network resource for RDMA networking.
///
/// Secondary networks are specialized network resources that enable high-performance RDMA (Remote Direct Memory Access) networking for compute-intensive workloads.
/// They provide dedicated network infrastructure with low latency and high bandwidth capabilities.
///
/// ## Example Usage
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
/// 		_, err := ec2.NewSecondaryNetwork(ctx, "example", &ec2.SecondaryNetworkArgs{
/// 			Ipv4CidrBlock: pulumi.String("10.0.0.0/16"),
/// 			NetworkType:   pulumi.String("rdma"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-secondary-network"),
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.SecondaryNetwork;
/// import com.pulumi.aws.ec2.SecondaryNetworkArgs;
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
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the secondary network.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Secondary Networks using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/secondaryNetwork:SecondaryNetwork example sn-0123456789abcdef0
/// ```
class SecondaryNetwork extends pulumi.CustomResource {
  /// ARN of the secondary network.
  late final pulumi.Output<String> arn;
  /// IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  late final pulumi.Output<String> ipv4CidrBlock;
  /// A list of IPv4 CIDR block associations for the secondary network.
  late final pulumi.Output<List<SecondaryNetworkIpv4CidrBlockAssociation>> ipv4CidrBlockAssociations;
  /// Type of secondary network. Currently only `rdma` is supported.
  late final pulumi.Output<String> networkType;
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the secondary network.
  late final pulumi.Output<String> secondaryNetworkId;
  /// State of the IPv4 CIDR block association.
  late final pulumi.Output<String> state;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<SecondaryNetworkTimeouts?> timeouts;

  /// Creates a new [SecondaryNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecondaryNetwork]. {@macro pulumi_ec2_secondary_network_secondary_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecondaryNetwork(
    String name, {
    SecondaryNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondaryNetwork:SecondaryNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    ipv4CidrBlock = registerOutput<String>('ipv4CidrBlock');
    ipv4CidrBlockAssociations = registerOutput<List<SecondaryNetworkIpv4CidrBlockAssociation>>('ipv4CidrBlockAssociations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecondaryNetworkIpv4CidrBlockAssociation>(guardedValue, (value) => SecondaryNetworkIpv4CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    networkType = registerOutput<String>('networkType');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    secondaryNetworkId = registerOutput<String>('secondaryNetworkId');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<SecondaryNetworkTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecondaryNetworkTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SecondaryNetwork] resource's state with the given [name] and [id].
  static SecondaryNetwork get(
    String name,
    pulumi.Input<String> id, {
    SecondaryNetworkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecondaryNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecondaryNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondaryNetwork:SecondaryNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    ipv4CidrBlock = registerOutput<String>('ipv4CidrBlock');
    ipv4CidrBlockAssociations = registerOutput<List<SecondaryNetworkIpv4CidrBlockAssociation>>('ipv4CidrBlockAssociations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecondaryNetworkIpv4CidrBlockAssociation>(guardedValue, (value) => SecondaryNetworkIpv4CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    networkType = registerOutput<String>('networkType');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    secondaryNetworkId = registerOutput<String>('secondaryNetworkId');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<SecondaryNetworkTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecondaryNetworkTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [SecondaryNetwork] resource.
  SecondaryNetwork.reference(String urn)
    : super(
        'aws:ec2/secondaryNetwork:SecondaryNetwork',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    ipv4CidrBlock = registerOutput<String>('ipv4CidrBlock');
    ipv4CidrBlockAssociations = registerOutput<List<SecondaryNetworkIpv4CidrBlockAssociation>>('ipv4CidrBlockAssociations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecondaryNetworkIpv4CidrBlockAssociation>(guardedValue, (value) => SecondaryNetworkIpv4CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>())); });
    networkType = registerOutput<String>('networkType');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    secondaryNetworkId = registerOutput<String>('secondaryNetworkId');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<SecondaryNetworkTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecondaryNetworkTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
