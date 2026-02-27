// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'autoprovisioning_node_pool_defaults.dart';
import 'cluster_autoscaling_autoscaling_profile.dart';
import 'resource_limit.dart';

/// ClusterAutoscaling contains global, per-cluster information required by Cluster Autoscaler to automatically adjust the size of the cluster and create/delete node pools based on the current needs.
class ClusterAutoscaling {
  /// The list of Google Compute Engine [zones](https://cloud.google.com/compute/docs/zones#available) in which the NodePool's nodes can be created by NAP.
  final List<String>? autoprovisioningLocations;

  /// AutoprovisioningNodePoolDefaults contains defaults for a node pool created by NAP.
  final AutoprovisioningNodePoolDefaults? autoprovisioningNodePoolDefaults;

  /// Defines autoscaling behaviour.
  final ClusterAutoscalingAutoscalingProfile? autoscalingProfile;

  /// Enables automatic node pool creation and deletion.
  final bool? enableNodeAutoprovisioning;

  /// Contains global constraints regarding minimum and maximum amount of resources in the cluster.
  final List<ResourceLimit>? resourceLimits;

  ClusterAutoscaling({
    this.autoprovisioningLocations,
    this.autoprovisioningNodePoolDefaults,
    this.autoscalingProfile,
    this.enableNodeAutoprovisioning,
    this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoprovisioningLocationsValue = autoprovisioningLocations;
    if (autoprovisioningLocationsValue != null) {
      map['autoprovisioningLocations'] = autoprovisioningLocationsValue;
    }
    final autoprovisioningNodePoolDefaultsValue =
        autoprovisioningNodePoolDefaults;
    if (autoprovisioningNodePoolDefaultsValue != null) {
      map['autoprovisioningNodePoolDefaults'] =
          autoprovisioningNodePoolDefaultsValue.toMap();
    }
    final autoscalingProfileValue = autoscalingProfile;
    if (autoscalingProfileValue != null) {
      map['autoscalingProfile'] = autoscalingProfileValue.value;
    }
    final enableNodeAutoprovisioningValue = enableNodeAutoprovisioning;
    if (enableNodeAutoprovisioningValue != null) {
      map['enableNodeAutoprovisioning'] = enableNodeAutoprovisioningValue;
    }
    final resourceLimitsValue = resourceLimits;
    if (resourceLimitsValue != null) {
      map['resourceLimits'] =
          Input.encodeList<ResourceLimit, Map<String, dynamic>>(
              resourceLimitsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterAutoscaling(
      autoprovisioningLocations: map['autoprovisioningLocations'] == null
          ? null
          : (map['autoprovisioningLocations'] as List).cast<String>(),
      autoprovisioningNodePoolDefaults:
          map['autoprovisioningNodePoolDefaults'] == null
              ? null
              : AutoprovisioningNodePoolDefaults.fromMap(
                  (map['autoprovisioningNodePoolDefaults'] as Map)
                      .cast<String, dynamic>()),
      autoscalingProfile: map['autoscalingProfile'] == null
          ? null
          : ClusterAutoscalingAutoscalingProfile.fromValue(
              map['autoscalingProfile'] as String),
      enableNodeAutoprovisioning: map['enableNodeAutoprovisioning'] == null
          ? null
          : map['enableNodeAutoprovisioning'] as bool,
      resourceLimits: map['resourceLimits'] == null
          ? null
          : Input.decodeList<ResourceLimit>(
              map['resourceLimits'],
              (value) => ResourceLimit.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
