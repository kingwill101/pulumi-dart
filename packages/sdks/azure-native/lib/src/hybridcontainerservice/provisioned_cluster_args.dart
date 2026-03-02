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
  ProvisionedClusterArgs({
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
      extendedLocation: map['extendedLocation'] == null ? null : (ProvisionedClustersExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ProvisionedClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ProvisionedClustersAllProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

