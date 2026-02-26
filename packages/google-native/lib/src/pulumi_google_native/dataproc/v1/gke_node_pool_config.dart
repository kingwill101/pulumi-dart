// ignore_for_file: unused_element, unnecessary_cast

import 'gke_node_config.dart';
import 'gke_node_pool_autoscaling_config.dart';

/// The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).
class GkeNodePoolConfig {
  /// Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
  final GkeNodePoolAutoscalingConfig? autoscaling;

  /// Optional. The node pool configuration.
  final GkeNodeConfig? config;

  /// Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
  final List<String>? locations;

  GkeNodePoolConfig({
    this.autoscaling,
    this.config,
    this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingValue = autoscaling;
    if (autoscalingValue != null) {
      map['autoscaling'] = autoscalingValue.toMap();
    }
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue.toMap();
    }
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = locationsValue;
    }
    return map;
  }

  factory GkeNodePoolConfig.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolConfig(
      autoscaling: map['autoscaling'] == null
          ? null
          : GkeNodePoolAutoscalingConfig.fromMap(
              (map['autoscaling'] as Map).cast<String, dynamic>()),
      config: map['config'] == null
          ? null
          : GkeNodeConfig.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      locations: map['locations'] == null
          ? null
          : (map['locations'] as List).cast<String>(),
    );
  }
}
