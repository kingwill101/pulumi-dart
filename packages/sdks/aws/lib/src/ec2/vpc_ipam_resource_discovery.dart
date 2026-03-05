import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_resource_discovery_args.dart';
import 'vpc_ipam_resource_discovery_state.dart';

/// Provides an IPAM Resource Discovery resource. IPAM Resource Discoveries are resources meant for multi-organization customers. If you wish to use a single IPAM across multiple orgs, a resource discovery can be created and shared from a subordinate organization to the management organizations IPAM delegated admin account. For a full deployment example, see `aws.ec2.VpcIpamResourceDiscoveryAssociation` resource.
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
/// const current = aws.getRegion({});
/// const main = new aws.ec2.VpcIpamResourceDiscovery("main", {
///     description: "My IPAM Resource Discovery",
///     operatingRegions: [{
///         regionName: current.then(current => current.region),
///     }],
///     tags: {
///         Test: "Main",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// main = aws.ec2.VpcIpamResourceDiscovery("main",
///     description="My IPAM Resource Discovery",
///     operating_regions=[{
///         "region_name": current.region,
///     }],
///     tags={
///         "Test": "Main",
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
///     var current = Aws.GetRegion.Invoke();
///
///     var main = new Aws.Ec2.VpcIpamResourceDiscovery("main", new()
///     {
///         Description = "My IPAM Resource Discovery",
///         OperatingRegions = new[]
///         {
///             new Aws.Ec2.Inputs.VpcIpamResourceDiscoveryOperatingRegionArgs
///             {
///                 RegionName = current.Apply(getRegionResult => getRegionResult.Region),
///             },
///         },
///         Tags =
///         {
///             { "Test", "Main" },
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
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamResourceDiscovery(ctx, "main", &ec2.VpcIpamResourceDiscoveryArgs{
/// 			Description: pulumi.String("My IPAM Resource Discovery"),
/// 			OperatingRegions: ec2.VpcIpamResourceDiscoveryOperatingRegionArray{
/// 				&ec2.VpcIpamResourceDiscoveryOperatingRegionArgs{
/// 					RegionName: pulumi.String(current.Region),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Test": pulumi.String("Main"),
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
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpamResourceDiscovery;
/// import com.pulumi.aws.ec2.VpcIpamResourceDiscoveryArgs;
/// import com.pulumi.aws.ec2.inputs.VpcIpamResourceDiscoveryOperatingRegionArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var main = new VpcIpamResourceDiscovery("main", VpcIpamResourceDiscoveryArgs.builder()
///             .description("My IPAM Resource Discovery")
///             .operatingRegions(VpcIpamResourceDiscoveryOperatingRegionArgs.builder()
///                 .regionName(current.region())
///                 .build())
///             .tags(Map.of("Test", "Main"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:VpcIpamResourceDiscovery
///     properties:
///       description: My IPAM Resource Discovery
///       operatingRegions:
///         - regionName: ${current.region}
///       tags:
///         Test: Main
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the IPAM resource discovery `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamResourceDiscovery:VpcIpamResourceDiscovery example ipam-res-disco-0178368ad2146a492
/// ```
class VpcIpamResourceDiscovery extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of IPAM Resource Discovery
  late final pulumi.Output<String> arn;
  /// A description for the IPAM Resource Discovery.
  late final pulumi.Output<String?> description;
  /// The home region of the Resource Discovery
  late final pulumi.Output<String> ipamResourceDiscoveryRegion;
  /// A boolean to identify if the Resource Discovery is the accounts default resource discovery
  late final pulumi.Output<bool> isDefault;
  /// Determines which regions the Resource Discovery will enable IPAM features for usage and monitoring. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM Resource Discovery. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. **You must set your provider block region as an operating_region.**
  late final pulumi.Output<List<Map<String, dynamic>>> operatingRegions;
  /// Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> organizationalUnitExclusions;
  /// The account ID for the account that manages the Resource Discovery
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcIpamResourceDiscovery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpamResourceDiscovery]. {@macro pulumi_ec2_vpc_ipam_resource_discovery_vpc_ipam_resource_discovery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIpamResourceDiscovery(
    String name, {
    VpcIpamResourceDiscoveryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamResourceDiscovery:VpcIpamResourceDiscovery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    ipamResourceDiscoveryRegion = registerOutput<String>('ipamResourceDiscoveryRegion');
    isDefault = registerOutput<bool>('isDefault');
    operatingRegions = registerOutput<List<Map<String, dynamic>>>('operatingRegions');
    organizationalUnitExclusions = registerOutput<List<Map<String, dynamic>>?>('organizationalUnitExclusions');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [VpcIpamResourceDiscovery] resource's state with the given [name] and [id].
  static VpcIpamResourceDiscovery get(
    String name,
    pulumi.Input<String> id, {
    VpcIpamResourceDiscoveryState? state,
  }) {
    return VpcIpamResourceDiscovery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcIpamResourceDiscovery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamResourceDiscovery:VpcIpamResourceDiscovery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    ipamResourceDiscoveryRegion = registerOutput<String>('ipamResourceDiscoveryRegion');
    isDefault = registerOutput<bool>('isDefault');
    operatingRegions = registerOutput<List<Map<String, dynamic>>>('operatingRegions');
    organizationalUnitExclusions = registerOutput<List<Map<String, dynamic>>?>('organizationalUnitExclusions');
    ownerId = registerOutput<String>('ownerId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
