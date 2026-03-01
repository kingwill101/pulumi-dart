// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_resource_association_dns_entry.dart';
import 'service_network_resource_association_timeouts.dart';

/// Input properties used for looking up and filtering ServiceNetworkResourceAssociation resources.
class ServiceNetworkResourceAssociationState {
  /// ARN of the Service Network Resource Association.
  final pulumi.Input<String>? arn;
  /// DNS entry of the association in the service network.
  final pulumi.Input<List<ServiceNetworkResourceAssociationDnsEntry>>? dnsEntries;
  /// Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to `false`. When set to `true`, the resource configuration identified by `resource_configuration_identifier` must have a custom domain name or a group domain for private DNS.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of Resource Configuration to associate to the Service Network.
  final pulumi.Input<String>? resourceConfigurationIdentifier;
  /// Identifier of the Service Network to associate the Resource to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? serviceNetworkIdentifier;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ServiceNetworkResourceAssociationTimeouts>? timeouts;

  /// Creates a new [ServiceNetworkResourceAssociationState].
  /// [arn] ARN of the Service Network Resource Association.
  /// [dnsEntries] DNS entry of the association in the service network.
  /// [privateDnsEnabled] Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to `false`. When set to `true`, the resource configuration identified by `resource_configuration_identifier` must have a custom domain name or a group domain for private DNS.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfigurationIdentifier] Identifier of Resource Configuration to associate to the Service Network.
  /// [serviceNetworkIdentifier] Identifier of the Service Network to associate the Resource to.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ServiceNetworkResourceAssociationState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<ServiceNetworkResourceAssociationDnsEntry>>? dnsEntries,
    pulumi.Output<bool>? privateDnsEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceConfigurationIdentifier,
    pulumi.Output<String>? serviceNetworkIdentifier,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ServiceNetworkResourceAssociationTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dnsEntries = pulumi.Input.asOptionalInput<List<ServiceNetworkResourceAssociationDnsEntry>>(dnsEntries),
      privateDnsEnabled = pulumi.Input.asOptionalInput<bool>(privateDnsEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceConfigurationIdentifier = pulumi.Input.asOptionalInput<String>(resourceConfigurationIdentifier),
      serviceNetworkIdentifier = pulumi.Input.asOptionalInput<String>(serviceNetworkIdentifier),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ServiceNetworkResourceAssociationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'dnsEntries': ?pulumi.Input.mapOptionalInputValue<List<ServiceNetworkResourceAssociationDnsEntry>, List<Map<String, dynamic>>>(dnsEntries, (value) => pulumi.Input.encodeList<ServiceNetworkResourceAssociationDnsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'resourceConfigurationIdentifier': ?resourceConfigurationIdentifier,
      'serviceNetworkIdentifier': ?serviceNetworkIdentifier,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkResourceAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ServiceNetworkResourceAssociationState.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkResourceAssociationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dnsEntries: map['dnsEntries'] == null ? null : pulumi.Output.create<List<ServiceNetworkResourceAssociationDnsEntry>>(pulumi.Input.decodeList<ServiceNetworkResourceAssociationDnsEntry>(map['dnsEntries'], (value) => ServiceNetworkResourceAssociationDnsEntry.fromMap((value as Map).cast<String, dynamic>()))),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateDnsEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceConfigurationIdentifier: map['resourceConfigurationIdentifier'] == null ? null : pulumi.Output.create<String>(map['resourceConfigurationIdentifier'] as String),
      serviceNetworkIdentifier: map['serviceNetworkIdentifier'] == null ? null : pulumi.Output.create<String>(map['serviceNetworkIdentifier'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ServiceNetworkResourceAssociationTimeouts>(ServiceNetworkResourceAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

