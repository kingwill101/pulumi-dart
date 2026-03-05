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
    this.clusterName,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.supportsScaling,
    this.tags,
  });

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
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportsScaling: (() { final guardedValue = map['supportsScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

