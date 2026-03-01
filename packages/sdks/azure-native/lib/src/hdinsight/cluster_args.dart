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
    pulumi.Output<String>? clusterName,
    pulumi.Output<ClusterIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<ClusterCreateProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      identity = pulumi.Input.asOptionalInput<ClusterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ClusterCreateProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ClusterIdentity>(ClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ClusterCreateProperties>(ClusterCreateProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

