import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_network_service_association_dns_entry/service_network_service_association_dns_entry.dart';
import 'service_network_service_association_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network Service Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network Service Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkServiceAssociation:ServiceNetworkServiceAssociation example snsa-05e2474658a88f6ba
/// ```
class ServiceNetworkServiceAssociation extends pulumi.CustomResource {
  /// The ARN of the Association.
  late final pulumi.Output<String> arn;

  /// The account that created the association.
  late final pulumi.Output<String> createdBy;

  /// The custom domain name of the service.
  late final pulumi.Output<String> customDomainName;

  /// The DNS name of the service.
  late final pulumi.Output<List<ServiceNetworkServiceAssociationDnsEntry>>
      dnsEntries;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID or Amazon Resource Identifier (ARN) of the service.
  late final pulumi.Output<String> serviceIdentifier;

  /// The ID or Amazon Resource Identifier (ARN) of the service network. You must use the ARN if the resources specified in the operation are in different accounts.
  late final pulumi.Output<String> serviceNetworkIdentifier;

  /// The operations status. Valid Values are CREATE_IN_PROGRESS | ACTIVE | DELETE_IN_PROGRESS | CREATE_FAILED | DELETE_FAILED
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ServiceNetworkServiceAssociation(
    String name, {
    ServiceNetworkServiceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkServiceAssociation:ServiceNetworkServiceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdBy = registerOutput<String>('createdBy');
    this.customDomainName = registerOutput<String>('customDomainName');
    this.dnsEntries =
        registerOutput<List<ServiceNetworkServiceAssociationDnsEntry>>(
            'dnsEntries');
    this.region = registerOutput<String>('region');
    this.serviceIdentifier = registerOutput<String>('serviceIdentifier');
    this.serviceNetworkIdentifier =
        registerOutput<String>('serviceNetworkIdentifier');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
