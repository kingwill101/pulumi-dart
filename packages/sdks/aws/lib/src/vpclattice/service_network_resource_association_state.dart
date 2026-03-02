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
    this.arn,
    this.dnsEntries,
    this.privateDnsEnabled,
    this.region,
    this.resourceConfigurationIdentifier,
    this.serviceNetworkIdentifier,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      dnsEntries: map['dnsEntries'] == null ? null : (pulumi.Input.decodeList<ServiceNetworkResourceAssociationDnsEntry>(map['dnsEntries'], (value) => ServiceNetworkResourceAssociationDnsEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : (map['privateDnsEnabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceConfigurationIdentifier: map['resourceConfigurationIdentifier'] == null ? null : (map['resourceConfigurationIdentifier'] as String).input(),
      serviceNetworkIdentifier: map['serviceNetworkIdentifier'] == null ? null : (map['serviceNetworkIdentifier'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (ServiceNetworkResourceAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

