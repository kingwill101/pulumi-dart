// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_network_resource_association_timeouts/service_network_resource_association_timeouts.dart';

/// The set of arguments for ServiceNetworkResourceAssociation.
class ServiceNetworkResourceAssociationArgs {
  /// Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to `false`. When set to `true`, the resource configuration identified by `resource_configuration_identifier` must have a custom domain name or a group domain for private DNS.
  final Input<bool>? privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Identifier of Resource Configuration to associate to the Service Network.
  final Input<String> resourceConfigurationIdentifier;

  /// Identifier of the Service Network to associate the Resource to.
  ///
  /// The following arguments are optional:
  final Input<String> serviceNetworkIdentifier;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ServiceNetworkResourceAssociationTimeouts>? timeouts;

  ServiceNetworkResourceAssociationArgs({
    this.privateDnsEnabled,
    this.region,
    required this.resourceConfigurationIdentifier,
    required this.serviceNetworkIdentifier,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final privateDnsEnabledValue = privateDnsEnabled;
    if (privateDnsEnabledValue != null) {
      map['privateDnsEnabled'] = privateDnsEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceConfigurationIdentifier'] = resourceConfigurationIdentifier;
    map['serviceNetworkIdentifier'] = serviceNetworkIdentifier;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          ServiceNetworkResourceAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ServiceNetworkResourceAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ServiceNetworkResourceAssociationArgs(
      privateDnsEnabled: Input.asOptionalInput<bool>(map['privateDnsEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceConfigurationIdentifier:
          Input.asInput<String>(map['resourceConfigurationIdentifier']),
      serviceNetworkIdentifier:
          Input.asInput<String>(map['serviceNetworkIdentifier']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<ServiceNetworkResourceAssociationTimeouts>(
              map['timeouts']),
    );
  }
}
