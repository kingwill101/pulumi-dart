import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_ipam_resource_discovery_operating_region/vpc_ipam_resource_discovery_operating_region.dart';
import '../vpc_ipam_resource_discovery_organizational_unit_exclusion/vpc_ipam_resource_discovery_organizational_unit_exclusion.dart';
import 'vpc_ipam_resource_discovery_args.dart';

/// Provides an IPAM Resource Discovery resource. IPAM Resource Discoveries are resources meant for multi-organization customers. If you wish to use a single IPAM across multiple orgs, a resource discovery can be created and shared from a subordinate organization to the management organizations IPAM delegated admin account. For a full deployment example, see `aws.ec2.VpcIpamResourceDiscoveryAssociation` resource.
///
/// ## Example Usage
///
/// Basic usage:
///
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
  late final pulumi.Output<List<VpcIpamResourceDiscoveryOperatingRegion>>
      operatingRegions;

  /// Add an Organizational Unit (OU) exclusion to IPAM. If IPAM is integrated with AWS Organizations and OU exclusion is added, IPAM will not manage the IP addresses in accounts in the OU exclusion. Refer to [IPAM Quotas](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) for the limit of exclusions that can be created.
  late final pulumi
      .Output<List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>?>
      organizationalUnitExclusions;

  /// The account ID for the account that manages the Resource Discovery
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

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
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.ipamResourceDiscoveryRegion =
        registerOutput<String>('ipamResourceDiscoveryRegion');
    this.isDefault = registerOutput<bool>('isDefault');
    this.operatingRegions =
        registerOutput<List<VpcIpamResourceDiscoveryOperatingRegion>>(
            'operatingRegions');
    this.organizationalUnitExclusions = registerOutput<
            List<VpcIpamResourceDiscoveryOrganizationalUnitExclusion>?>(
        'organizationalUnitExclusions');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
