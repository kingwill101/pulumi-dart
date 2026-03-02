// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_create_properties.dart';
import 'cluster_identity.dart';

/// {@template pulumi_hdinsight_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_cluster_args_doc}
class ClusterArgs {
  /// The name of the cluster.
  final pulumi.Input<String>? clusterName;
  /// The identity of the cluster, if configured.
  final pulumi.Input<ClusterIdentity>? identity;
  /// The location of the cluster.
  final pulumi.Input<String>? location;
  /// The cluster create parameters.
  final pulumi.Input<ClusterCreateProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The availability zones.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ClusterArgs].
  /// [clusterName] The name of the cluster.
  /// [identity] The identity of the cluster, if configured.
  /// [location] The location of the cluster.
  /// [properties] The cluster create parameters.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] The resource tags.
  /// [zones] The availability zones.
  ClusterArgs({
    this.clusterName,
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ClusterCreateProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      identity: map['identity'] == null ? null : (ClusterIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (ClusterCreateProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

