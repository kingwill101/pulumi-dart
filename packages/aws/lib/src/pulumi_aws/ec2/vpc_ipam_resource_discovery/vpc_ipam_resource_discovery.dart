import 'package:pulumi/pulumi.dart';
import '../vpc_ipam_resource_discovery_operating_region/vpc_ipam_resource_discovery_operating_region.dart';
import '../vpc_ipam_resource_discovery_organizational_unit_exclusion/vpc_ipam_resource_discovery_organizational_unit_exclusion.dart';
import 'vpc_ipam_resource_discovery_args.dart';

/// Provides an IPAM Resource Discovery resource. IPAM Resource Discoveries are resources meant for multi-organization customers. If you wish to use a single IPAM across multiple orgs, a resource discovery can be created and shared from a subordinate organization to the management organizations IPAM delegated admin account. For a full deployment example, see <span pulumi-lang-nodejs="`aws.ec2.VpcIpamResourceDiscoveryAssociation`" pulumi-lang-dotnet="`aws.ec2.VpcIpamResourceDiscoveryAssociation`" pulumi-lang-go="`ec2.VpcIpamResourceDiscoveryAssociation`" pulumi-lang-python="`ec2.VpcIpamResourceDiscoveryAssociation`" pulumi-lang-yaml="`aws.ec2.VpcIpamResourceDiscoveryAssociation`" pulumi-lang-java="`aws.ec2.VpcIpamResourceDiscoveryAssociation`">`aws.ec2.VpcIpamResourceDiscoveryAssociation`</span> resource.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const main = new aws.ec2.VpcIpamResourceDiscovery("main", {
/// description: "My IPAM Resource Discovery",
/// operatingRegions: [{
/// regionName: current.then(current => current.region),
/// }],
/// tags: {
/// Test: "Main",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// main = aws.ec2.VpcIpamResourceDiscovery("main",
/// description="My IPAM Resource Discovery",
/// operating_regions=[{
/// "region_name": current.region,
/// }],
/// tags={
/// "Test": "Main",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetRegion.Invoke();
///
/// var main = new Aws.Ec2.VpcIpamResourceDiscovery("main", new()
/// {
/// Description = "My IPAM Resource Discovery",
/// OperatingRegions = new[]
/// {
/// new Aws.Ec2.Inputs.VpcIpamResourceDiscoveryOperatingRegionArgs
/// {
/// RegionName = current.Apply(getRegionResult => getRegionResult.Region),
/// },
/// },
/// Tags =
/// {
/// { "Test", "Main" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcIpamResourceDiscovery(ctx, "main", &ec2.VpcIpamResourceDiscoveryArgs{
/// Description: pulumi.String("My IPAM Resource Discovery"),
/// OperatingRegions: ec2.VpcIpamResourceDiscoveryOperatingRegionArray{
/// &ec2.VpcIpamResourceDiscoveryOperatingRegionArgs{
/// RegionName: pulumi.String(current.Region),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Test": pulumi.String("Main"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var main = new VpcIpamResourceDiscovery("main", VpcIpamResourceDiscoveryArgs.builder()
/// .description("My IPAM Resource Discovery")
/// .operatingRegions(VpcIpamResourceDiscoveryOperatingRegionArgs.builder()
/// .regionName(current.region())
/// .build())
/// .tags(Map.of("Test", "Main"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:ec2:VpcIpamResourceDiscovery
/// properties:
/// description: My IPAM Resource Discovery
/// operatingRegions:
/// - regionName: ${current.region}
/// tags:
/// Test: Main
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the IPAM resource discovery <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamResourceDiscovery:VpcIpamResourceDiscovery example ipam-res-disco-0178368ad2146a492
/// ```
class VpcIpamResourceDiscovery extends CustomResource {
  /// Amazon Resource Name (ARN) of IPAM Resource Discovery
  late final Output<String> arn;

  /// A description for the IPAM Resource Discovery.
  late final Output<String?> description;

  /// The home region of the Resource Discovery
  late final Output<String> ipamResourceDiscoveryRegion;

  /// A boolean to identify if the Resource Discovery is the accounts default resource discovery
  late final Output<bool> isDefault;

  /// Determines which regions the Resource Discovery will enable IPAM features for usage and monitoring. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM Resource Discovery. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the<span pulumi-lang-nodejs=" regionName " pulumi-lang-dotnet=" RegionName " pulumi-lang-go=" regionName " pulumi-lang-python=" region_name " pulumi-lang-yaml=" regionName " pulumi-lang-java=" regionName "> region_name </span>parameter. **You must set your provider block region as an operating_region.**
  late final Output<List<VpcIpamResourceDiscoveryOperatingRegion>>
      operatingRegions;

  /// Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  late final Output<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>?>
      organizationalUnitExclusions;

  /// The account ID for the account that manages the Resource Discovery
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  VpcIpamResourceDiscovery(
    String name, {
    VpcIpamResourceDiscoveryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamResourceDiscovery:VpcIpamResourceDiscovery',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.ipamResourceDiscoveryRegion = Output.createUnknown<String>();
    this.isDefault = Output.createUnknown<bool>();
    this.operatingRegions =
        Output.createUnknown<List<VpcIpamResourceDiscoveryOperatingRegion>>();
    this.organizationalUnitExclusions = Output.createUnknown<
        List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>?>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
