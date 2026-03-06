// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_resource_association_timeouts.dart';

/// {@template pulumi_vpclattice_service_network_resource_association_service_network_resource_association_args_doc}
/// The set of arguments for ServiceNetworkResourceAssociation.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_service_network_resource_association_service_network_resource_association_args_doc}
class ServiceNetworkResourceAssociationArgs {
  /// Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to `false`. When set to `true`, the resource configuration identified by `resource_configuration_identifier` must have a custom domain name or a group domain for private DNS.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of Resource Configuration to associate to the Service Network.
  final pulumi.Input<String> resourceConfigurationIdentifier;
  /// Identifier of the Service Network to associate the Resource to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> serviceNetworkIdentifier;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ServiceNetworkResourceAssociationTimeouts>? timeouts;

  /// Creates a new [ServiceNetworkResourceAssociationArgs].
  /// [privateDnsEnabled] Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to `false`. When set to `true`, the resource configuration identified by `resource_configuration_identifier` must have a custom domain name or a group domain for private DNS.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfigurationIdentifier] Identifier of Resource Configuration to associate to the Service Network.
  /// [serviceNetworkIdentifier] Identifier of the Service Network to associate the Resource to.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const ServiceNetworkResourceAssociationArgs({
    this.privateDnsEnabled,
    this.region,
    required this.resourceConfigurationIdentifier,
    required this.serviceNetworkIdentifier,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'resourceConfigurationIdentifier': resourceConfigurationIdentifier,
      'serviceNetworkIdentifier': serviceNetworkIdentifier,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ServiceNetworkResourceAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ServiceNetworkResourceAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkResourceAssociationArgs(
      privateDnsEnabled: (() { final guardedValue = map['privateDnsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceConfigurationIdentifier: pulumi.Input.fromValue(map['resourceConfigurationIdentifier'] as String),
      serviceNetworkIdentifier: pulumi.Input.fromValue(map['serviceNetworkIdentifier'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceNetworkResourceAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

