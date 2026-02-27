import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_ipam_pool_source_resource/vpc_ipam_pool_source_resource.dart';
import 'vpc_ipam_pool_args.dart';

/// Provides an IP address pool resource for IPAM.
///
/// > **NOTE:** When provisioning resource planning IPAM pools, it can take upto 30 minutes for the CIDR to be managed by IPAM.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// Nested Pools:
///
///
///
/// Resource Planning Pools:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the IPAM pool `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamPool:VpcIpamPool example ipam-pool-0958f95207d978e1e
/// ```
class VpcIpamPool extends pulumi.CustomResource {
  /// The IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool.
  late final pulumi.Output<String> addressFamily;

  /// A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation).
  late final pulumi.Output<int?> allocationDefaultNetmaskLength;

  /// The maximum netmask length that will be required for CIDR allocations in this pool.
  late final pulumi.Output<int?> allocationMaxNetmaskLength;

  /// The minimum netmask length that will be required for CIDR allocations in this pool.
  late final pulumi.Output<int?> allocationMinNetmaskLength;

  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  late final pulumi.Output<Map<String, String>?> allocationResourceTags;

  /// Amazon Resource Name (ARN) of IPAM
  late final pulumi.Output<String> arn;

  /// If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall
  /// within the CIDR range in the pool.
  late final pulumi.Output<bool?> autoImport;

  /// Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: `ec2`.
  late final pulumi.Output<String?> awsService;

  /// Enables you to quickly delete an IPAM pool and all resources within that pool, including provisioned CIDRs, allocations, and other pools.
  late final pulumi.Output<bool?> cascade;

  /// A description for the IPAM pool.
  late final pulumi.Output<String?> description;

  /// The ID of the scope in which you would like to create the IPAM pool.
  late final pulumi.Output<String> ipamScopeId;
  late final pulumi.Output<String> ipamScopeType;

  /// The locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as `us-east-1`.
  late final pulumi.Output<String?> locale;
  late final pulumi.Output<int> poolDepth;

  /// The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Valid values are `byoip` or `amazon`. Default is `byoip`.
  late final pulumi.Output<String?> publicIpSource;

  /// Defines whether or not IPv6 pool space is publicly advertisable over the internet. This argument is required if `address_family = "ipv6"` and `public_ip_source = "byoip"`, default is `false`. This option is not available for IPv4 pool space or if `public_ip_source = "amazon"`. Setting this argument to `true` when it is not available may result in erroneous differences being reported.
  late final pulumi.Output<bool?> publiclyAdvertisable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the source IPAM pool. Use this argument to create a child pool within an existing pool.
  late final pulumi.Output<String?> sourceIpamPoolId;

  /// Resource to use to use to configure a resource planning IPAM Pool. If configured, the `locale` of the parent pool must match the region that the vpc resides in.
  late final pulumi.Output<VpcIpamPoolSourceResource?> sourceResource;

  /// The ID of the IPAM
  late final pulumi.Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  VpcIpamPool(
    String name, {
    VpcIpamPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamPool:VpcIpamPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressFamily = registerOutput<String>('addressFamily');
    this.allocationDefaultNetmaskLength =
        registerOutput<int?>('allocationDefaultNetmaskLength');
    this.allocationMaxNetmaskLength =
        registerOutput<int?>('allocationMaxNetmaskLength');
    this.allocationMinNetmaskLength =
        registerOutput<int?>('allocationMinNetmaskLength');
    this.allocationResourceTags =
        registerOutput<Map<String, String>?>('allocationResourceTags');
    this.arn = registerOutput<String>('arn');
    this.autoImport = registerOutput<bool?>('autoImport');
    this.awsService = registerOutput<String?>('awsService');
    this.cascade = registerOutput<bool?>('cascade');
    this.description = registerOutput<String?>('description');
    this.ipamScopeId = registerOutput<String>('ipamScopeId');
    this.ipamScopeType = registerOutput<String>('ipamScopeType');
    this.locale = registerOutput<String?>('locale');
    this.poolDepth = registerOutput<int>('poolDepth');
    this.publicIpSource = registerOutput<String?>('publicIpSource');
    this.publiclyAdvertisable = registerOutput<bool?>('publiclyAdvertisable');
    this.region = registerOutput<String>('region');
    this.sourceIpamPoolId = registerOutput<String?>('sourceIpamPoolId');
    this.sourceResource =
        registerOutput<VpcIpamPoolSourceResource?>('sourceResource');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
