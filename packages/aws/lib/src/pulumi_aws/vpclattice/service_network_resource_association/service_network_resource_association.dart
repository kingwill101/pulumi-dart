import 'package:pulumi/pulumi.dart' as pulumi;
import '../service_network_resource_association_dns_entry/service_network_resource_association_dns_entry.dart';
import '../service_network_resource_association_timeouts/service_network_resource_association_timeouts.dart';
import 'service_network_resource_association_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network Resource Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network Resource Association using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkResourceAssociation:ServiceNetworkResourceAssociation example snra-1234567890abcef12
/// ```
class ServiceNetworkResourceAssociation extends pulumi.CustomResource {
  /// ARN of the Service Network Resource Association.
  late final pulumi.Output<String> arn;

  /// DNS entry of the association in the service network.
  late final pulumi.Output<List<ServiceNetworkResourceAssociationDnsEntry>>
      dnsEntries;

  /// Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to `false`. When set to `true`, the resource configuration identified by `resource_configuration_identifier` must have a custom domain name or a group domain for private DNS.
  late final pulumi.Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of Resource Configuration to associate to the Service Network.
  late final pulumi.Output<String> resourceConfigurationIdentifier;

  /// Identifier of the Service Network to associate the Resource to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> serviceNetworkIdentifier;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ServiceNetworkResourceAssociationTimeouts?> timeouts;

  ServiceNetworkResourceAssociation(
    String name, {
    ServiceNetworkResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkResourceAssociation:ServiceNetworkResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dnsEntries =
        registerOutput<List<ServiceNetworkResourceAssociationDnsEntry>>(
            'dnsEntries');
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.resourceConfigurationIdentifier =
        registerOutput<String>('resourceConfigurationIdentifier');
    this.serviceNetworkIdentifier =
        registerOutput<String>('serviceNetworkIdentifier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<ServiceNetworkResourceAssociationTimeouts?>('timeouts');
  }
}
