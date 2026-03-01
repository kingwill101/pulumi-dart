// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_sku.dart';

/// {@template pulumi_eventhub_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_eventhub_cluster_args_doc}
class ClusterArgs {
  /// The name of the Event Hubs Cluster.
  final pulumi.Input<String>? clusterName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Properties of the cluster SKU.
  final pulumi.Input<ClusterSku>? sku;
  /// A value that indicates whether Scaling is Supported.
  final pulumi.Input<bool>? supportsScaling;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ClusterArgs].
  /// [clusterName] The name of the Event Hubs Cluster.
  /// [location] Resource location.
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [sku] Properties of the cluster SKU.
  /// [supportsScaling] A value that indicates whether Scaling is Supported.
  /// [tags] Resource tags.
  ClusterArgs({
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ClusterSku>? sku,
    pulumi.Output<bool>? supportsScaling,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<ClusterSku>(sku),
      supportsScaling = pulumi.Input.asOptionalInput<bool>(supportsScaling),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ClusterSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'supportsScaling': ?supportsScaling,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ClusterSku>(ClusterSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      supportsScaling: map['supportsScaling'] == null ? null : pulumi.Output.create<bool>(map['supportsScaling'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

