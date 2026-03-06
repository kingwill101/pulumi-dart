// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_cluster_identity.dart';
import 'provisioned_clusters_all_properties.dart';
import 'provisioned_clusters_extended_location.dart';

/// {@template pulumi_hybridcontainerservice_provisioned_cluster_args_doc}
/// The set of arguments for ProvisionedCluster.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_provisioned_cluster_args_doc}
class ProvisionedClusterArgs {
  final pulumi.Input<ProvisionedClustersExtendedLocation>? extendedLocation;
  /// Identity for the Provisioned cluster.
  final pulumi.Input<ProvisionedClusterIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// All properties of the provisioned cluster
  final pulumi.Input<ProvisionedClustersAllProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the provisioned cluster
  final pulumi.Input<String>? resourceName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProvisionedClusterArgs].
  /// [extendedLocation] Optional.
  /// [identity] Identity for the Provisioned cluster.
  /// [location] The geo-location where the resource lives
  /// [properties] All properties of the provisioned cluster
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Parameter for the name of the provisioned cluster
  /// [tags] Resource tags.
  const ProvisionedClusterArgs({
    this.extendedLocation,
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ProvisionedClustersExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ProvisionedClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ProvisionedClustersAllProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory ProvisionedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterArgs(
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClustersExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClusterIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProvisionedClustersAllProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

