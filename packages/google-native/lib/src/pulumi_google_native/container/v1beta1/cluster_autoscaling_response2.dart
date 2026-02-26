// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'autoprovisioning_node_pool_defaults_response2.dart';
import 'resource_limit_response2.dart';

/// ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.
class ClusterAutoscalingResponse2 {
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  final List<String> autoprovisioningLocations;

  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  final AutoprovisioningNodePoolDefaultsResponse2
      autoprovisioningNodePoolDefaults;

  /// Defines autoscaling behaviour.
  final String autoscalingProfile;

  /// Enables automatic node pool creation and deletion.
  final bool enableNodeAutoprovisioning;

  /// Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  final List<ResourceLimitResponse2> resourceLimits;

  ClusterAutoscalingResponse2({
    required this.autoprovisioningLocations,
    required this.autoprovisioningNodePoolDefaults,
    required this.autoscalingProfile,
    required this.enableNodeAutoprovisioning,
    required this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoprovisioningLocations'] = autoprovisioningLocations;
    map['autoprovisioningNodePoolDefaults'] =
        autoprovisioningNodePoolDefaults.toMap();
    map['autoscalingProfile'] = autoscalingProfile;
    map['enableNodeAutoprovisioning'] = enableNodeAutoprovisioning;
    map['resourceLimits'] =
        Input.encodeList<ResourceLimitResponse2, Map<String, dynamic>>(
            resourceLimits, (value) => value.toMap());
    return map;
  }

  factory ClusterAutoscalingResponse2.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscalingResponse2(
      autoprovisioningLocations:
          (map['autoprovisioningLocations'] as List).cast<String>(),
      autoprovisioningNodePoolDefaults:
          AutoprovisioningNodePoolDefaultsResponse2.fromMap(
              (map['autoprovisioningNodePoolDefaults'] as Map)
                  .cast<String, dynamic>()),
      autoscalingProfile: map['autoscalingProfile'] as String,
      enableNodeAutoprovisioning: map['enableNodeAutoprovisioning'] as bool,
      resourceLimits: Input.decodeList<ResourceLimitResponse2>(
          map['resourceLimits'],
          (value) => ResourceLimitResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
