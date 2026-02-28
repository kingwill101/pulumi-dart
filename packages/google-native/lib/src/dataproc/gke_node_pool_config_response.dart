// ignore_for_file: unused_element, unnecessary_cast

import 'gke_node_config_response.dart';
import 'gke_node_pool_autoscaling_config_response.dart';

/// The configuration of a GKE node pool used by a Dataproc-on-GKE cluster (https://cloud.google.com/dataproc/docs/concepts/jobs/dataproc-gke#create-a-dataproc-on-gke-cluster).
class GkeNodePoolConfigResponse {
  /// Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
  final GkeNodePoolAutoscalingConfigResponse autoscaling;

  /// Optional. The node pool configuration.
  final GkeNodeConfigResponse config;

  /// Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
  final List<String> locations;

  /// Creates a new [GkeNodePoolConfigResponse].
  /// [autoscaling] Optional. The autoscaler configuration for this node pool. The autoscaler is enabled only when a valid configuration is present.
  /// [config] Optional. The node pool configuration.
  /// [locations] Optional. The list of Compute Engine zones (https://cloud.google.com/compute/docs/zones#available) where node pool nodes associated with a Dataproc on GKE virtual cluster will be located.Note: All node pools associated with a virtual cluster must be located in the same region as the virtual cluster, and they must be located in the same zone within that region.If a location is not specified during node pool creation, Dataproc on GKE will choose the zone.
  GkeNodePoolConfigResponse({
    required this.autoscaling,
    required this.config,
    required this.locations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscaling'] = autoscaling.toMap();
    map['config'] = config.toMap();
    map['locations'] = locations;
    return map;
  }

  factory GkeNodePoolConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolConfigResponse(
      autoscaling: GkeNodePoolAutoscalingConfigResponse.fromMap(
          (map['autoscaling'] as Map).cast<String, dynamic>()),
      config: GkeNodeConfigResponse.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      locations: (map['locations'] as List).cast<String>(),
    );
  }
}
