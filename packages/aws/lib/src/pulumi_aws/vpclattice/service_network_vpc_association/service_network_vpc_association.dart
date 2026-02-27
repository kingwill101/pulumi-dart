import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_network_vpc_association_dns_options/service_network_vpc_association_dns_options.dart';
import 'service_network_vpc_association_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network VPC Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network VPC Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkVpcAssociation:ServiceNetworkVpcAssociation example snsa-05e2474658a88f6ba
/// ```
class ServiceNetworkVpcAssociation extends pulumi.CustomResource {
  /// The ARN of the Association.
  late final pulumi.Output<String> arn;

  /// The account that created the association.
  late final pulumi.Output<String> createdBy;

  /// Configuration block for DNS option. See `dns_options` block below for details.
  late final pulumi.Output<ServiceNetworkVpcAssociationDnsOptions?> dnsOptions;

  /// Boolean to indicate whether to enable private DNS for the VPC association. Defaults to `false`.
  late final pulumi.Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The IDs of the security groups.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceNetworkIdentifier;

  /// The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the VPC.
  late final pulumi.Output<String> vpcIdentifier;

  ServiceNetworkVpcAssociation(
    String name, {
    ServiceNetworkVpcAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkVpcAssociation:ServiceNetworkVpcAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdBy = registerOutput<String>('createdBy');
    this.dnsOptions =
        registerOutput<ServiceNetworkVpcAssociationDnsOptions?>('dnsOptions');
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.serviceNetworkIdentifier =
        registerOutput<String>('serviceNetworkIdentifier');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcIdentifier = registerOutput<String>('vpcIdentifier');
  }
}
