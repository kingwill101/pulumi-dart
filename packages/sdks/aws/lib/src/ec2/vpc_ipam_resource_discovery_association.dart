import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_resource_discovery_association_args.dart';
import 'vpc_ipam_resource_discovery_association_state.dart';

/// Provides an association between an Amazon IP Address Manager (IPAM) and a IPAM Resource Discovery. IPAM Resource Discoveries are resources meant for multi-organization customers. If you wish to use a single IPAM across multiple orgs, a resource discovery can be created and shared from a subordinate organization to the management organizations IPAM delegated admin account.
///
/// Once an association is created between two organizations via IPAM & a IPAM Resource Discovery, IPAM Pools can be shared via Resource Access Manager (RAM) to accounts in the subordinate organization; these RAM shares must be accepted by the end user account. Pools can then also discover and monitor IPAM resources in the subordinate organization.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.VpcIpamResourceDiscoveryAssociation("test", {
///     ipamId: testAwsVpcIpam.id,
///     ipamResourceDiscoveryId: testAwsVpcIpamResourceDiscovery.id,
///     tags: {
///         Name: "test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.VpcIpamResourceDiscoveryAssociation("test",
///     ipam_id=test_aws_vpc_ipam["id"],
///     ipam_resource_discovery_id=test_aws_vpc_ipam_resource_discovery["id"],
///     tags={
///         "Name": "test",
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
///     var test = new Aws.Ec2.VpcIpamResourceDiscoveryAssociation("test", new()
///     {
///         IpamId = testAwsVpcIpam.Id,
///         IpamResourceDiscoveryId = testAwsVpcIpamResourceDiscovery.Id,
///         Tags =
///         {
///             { "Name", "test" },
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
/// 		_, err := ec2.NewVpcIpamResourceDiscoveryAssociation(ctx, "test", &ec2.VpcIpamResourceDiscoveryAssociationArgs{
/// 			IpamId:                  pulumi.Any(testAwsVpcIpam.Id),
/// 			IpamResourceDiscoveryId: pulumi.Any(testAwsVpcIpamResourceDiscovery.Id),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("test"),
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
/// resource "aws_ec2_vpcipamresourcediscoveryassociation" "test" {
///   ipam_id                    = testAwsVpcIpam.id
///   ipam_resource_discovery_id = testAwsVpcIpamResourceDiscovery.id
///   tags = {
///     "Name" = "test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcIpamResourceDiscoveryAssociation;
/// import com.pulumi.aws.ec2.VpcIpamResourceDiscoveryAssociationArgs;
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
///         var test = new VpcIpamResourceDiscoveryAssociation("test", VpcIpamResourceDiscoveryAssociationArgs.builder()
///             .ipamId(testAwsVpcIpam.id())
///             .ipamResourceDiscoveryId(testAwsVpcIpamResourceDiscovery.id())
///             .tags(Map.of("Name", "test"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:VpcIpamResourceDiscoveryAssociation
///     properties:
///       ipamId: ${testAwsVpcIpam.id}
///       ipamResourceDiscoveryId: ${testAwsVpcIpamResourceDiscovery.id}
///       tags:
///         Name: test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the IPAM resource discovery association `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamResourceDiscoveryAssociation:VpcIpamResourceDiscoveryAssociation example ipam-res-disco-assoc-0178368ad2146a492
/// ```
class VpcIpamResourceDiscoveryAssociation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of IPAM Resource Discovery Association.
  late final pulumi.Output<String> arn;
  /// The Amazon Resource Name (ARN) of the IPAM.
  late final pulumi.Output<String> ipamArn;
  /// The ID of the IPAM to associate.
  late final pulumi.Output<String> ipamId;
  /// The home region of the IPAM.
  late final pulumi.Output<String> ipamRegion;
  /// The ID of the Resource Discovery to associate.
  late final pulumi.Output<String> ipamResourceDiscoveryId;
  /// A boolean to identify if the Resource Discovery is the accounts default resource discovery.
  late final pulumi.Output<bool> isDefault;
  /// The account ID for the account that manages the Resource Discovery
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The lifecycle state of the association when you associate or disassociate a resource discovery.
  late final pulumi.Output<String> state;
  /// A map of tags to add to the IPAM resource discovery association resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcIpamResourceDiscoveryAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpamResourceDiscoveryAssociation]. {@macro pulumi_ec2_vpc_ipam_resource_discovery_association_vpc_ipam_resource_discovery_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIpamResourceDiscoveryAssociation(
    String name, {
    VpcIpamResourceDiscoveryAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamResourceDiscoveryAssociation:VpcIpamResourceDiscoveryAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    ipamArn = registerOutput<String>('ipamArn');
    ipamId = registerOutput<String>('ipamId');
    ipamRegion = registerOutput<String>('ipamRegion');
    ipamResourceDiscoveryId = registerOutput<String>('ipamResourceDiscoveryId');
    isDefault = registerOutput<bool>('isDefault');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [VpcIpamResourceDiscoveryAssociation] resource's state with the given [name] and [id].
  static VpcIpamResourceDiscoveryAssociation get(
    String name,
    pulumi.Input<String> id, {
    VpcIpamResourceDiscoveryAssociationState? state,
  }) {
    return VpcIpamResourceDiscoveryAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcIpamResourceDiscoveryAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamResourceDiscoveryAssociation:VpcIpamResourceDiscoveryAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    ipamArn = registerOutput<String>('ipamArn');
    ipamId = registerOutput<String>('ipamId');
    ipamRegion = registerOutput<String>('ipamRegion');
    ipamResourceDiscoveryId = registerOutput<String>('ipamResourceDiscoveryId');
    isDefault = registerOutput<bool>('isDefault');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
