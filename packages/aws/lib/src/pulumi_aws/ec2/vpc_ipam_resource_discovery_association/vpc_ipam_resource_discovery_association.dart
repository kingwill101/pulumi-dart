import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_resource_discovery_association_args.dart';

/// Provides an association between an Amazon IP Address Manager (IPAM) and a IPAM Resource Discovery. IPAM Resource Discoveries are resources meant for multi-organization customers. If you wish to use a single IPAM across multiple orgs, a resource discovery can be created and shared from a subordinate organization to the management organizations IPAM delegated admin account.
///
/// Once an association is created between two organizations via IPAM & a IPAM Resource Discovery, IPAM Pools can be shared via Resource Access Manager (RAM) to accounts in the subordinate organization; these RAM shares must be accepted by the end user account. Pools can then also discover and monitor IPAM resources in the subordinate organization.
///
/// ## Example Usage
///
/// Basic usage:
///
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

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

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
    this.arn = registerOutput<String>('arn');
    this.ipamArn = registerOutput<String>('ipamArn');
    this.ipamId = registerOutput<String>('ipamId');
    this.ipamRegion = registerOutput<String>('ipamRegion');
    this.ipamResourceDiscoveryId =
        registerOutput<String>('ipamResourceDiscoveryId');
    this.isDefault = registerOutput<bool>('isDefault');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
