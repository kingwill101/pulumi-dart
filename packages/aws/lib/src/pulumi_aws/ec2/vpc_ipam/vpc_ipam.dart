import 'package:pulumi/pulumi.dart';
import '../vpc_ipam_operating_region/vpc_ipam_operating_region.dart';
import 'vpc_ipam_args.dart';

/// Provides an IPAM resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// Shared with multiple operating_regions:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the IPAM `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpam:VpcIpam example ipam-0178368ad2146a492
/// ```
class VpcIpam extends CustomResource {
  /// Amazon Resource Name (ARN) of IPAM
  late final Output<String> arn;

  /// Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  late final Output<bool?> cascade;

  /// The IPAM's default resource discovery association ID.
  late final Output<String> defaultResourceDiscoveryAssociationId;

  /// The IPAM's default resource discovery ID.
  late final Output<String> defaultResourceDiscoveryId;

  /// A description for the IPAM.
  late final Output<String?> description;

  /// Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  late final Output<bool?> enablePrivateGua;

  /// AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  late final Output<String> meteredAccount;

  /// Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. You **must** set your provider block region as an operating_region.
  late final Output<List<VpcIpamOperatingRegion>> operatingRegions;

  /// The ID of the IPAM's private scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private IP space. The public scope is intended for all internet-routable IP space.
  late final Output<String> privateDefaultScopeId;

  /// The ID of the IPAM's public scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private
  /// IP space. The public scope is intended for all internet-routable IP space.
  late final Output<String> publicDefaultScopeId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of scopes in the IPAM.
  late final Output<int> scopeCount;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  late final Output<String?> tier;

  VpcIpam(
    String name, {
    VpcIpamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpam:VpcIpam',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cascade = registerOutput<bool?>('cascade');
    this.defaultResourceDiscoveryAssociationId =
        registerOutput<String>('defaultResourceDiscoveryAssociationId');
    this.defaultResourceDiscoveryId =
        registerOutput<String>('defaultResourceDiscoveryId');
    this.description = registerOutput<String?>('description');
    this.enablePrivateGua = registerOutput<bool?>('enablePrivateGua');
    this.meteredAccount = registerOutput<String>('meteredAccount');
    this.operatingRegions =
        registerOutput<List<VpcIpamOperatingRegion>>('operatingRegions');
    this.privateDefaultScopeId =
        registerOutput<String>('privateDefaultScopeId');
    this.publicDefaultScopeId = registerOutput<String>('publicDefaultScopeId');
    this.region = registerOutput<String>('region');
    this.scopeCount = registerOutput<int>('scopeCount');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tier = registerOutput<String?>('tier');
  }
}
