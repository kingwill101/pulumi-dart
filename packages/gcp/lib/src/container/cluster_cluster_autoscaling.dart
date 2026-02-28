// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_autoscaling_auto_provisioning_defaults.dart';
import 'cluster_cluster_autoscaling_resource_limit.dart';

class ClusterClusterAutoscaling {
  /// Contains defaults for a node pool created by NAP. A subset of fields also apply to
  /// GKE Autopilot clusters.
  /// Structure is documented below.
  final ClusterClusterAutoscalingAutoProvisioningDefaults?
      autoProvisioningDefaults;

  /// The list of Google Compute Engine
  /// [zones](https://cloud.google.com/compute/docs/zones#available) in which the
  /// NodePool's nodes can be created by NAP.
  final List<String>? autoProvisioningLocations;

  /// Configuration
  /// options for the [Autoscaling profile](https://cloud.google.com/kubernetes-engine/docs/concepts/cluster-autoscaler#autoscaling_profiles)
  /// feature, which lets you choose whether the cluster autoscaler should optimize for resource utilization or resource availability
  /// when deciding to remove nodes from a cluster. Can be `BALANCED` or `OPTIMIZE_UTILIZATION`. Defaults to `BALANCED`.
  final String? autoscalingProfile;

  /// Specifies whether default compute class behaviour is enabled. If enabled, cluster autoscaler will use Compute Class with name default for all the workloads, if not overriden.
  final bool? defaultComputeClassEnabled;

  /// Whether node auto-provisioning is enabled. Must be supplied for GKE Standard clusters, `true` is implied
  /// for autopilot clusters. Resource limits for `cpu` and `memory` must be defined to enable node auto-provisioning for GKE Standard.
  final bool? enabled;

  /// Global constraints for machine resources in the
  /// cluster. Configuring the `cpu` and `memory` types is required if node
  /// auto-provisioning is enabled. These limits will apply to node pool autoscaling
  /// in addition to node auto-provisioning. Structure is documented below.
  final List<ClusterClusterAutoscalingResourceLimit>? resourceLimits;

  /// Creates a new [ClusterClusterAutoscaling].
  /// [autoProvisioningDefaults] Contains defaults for a node pool created by NAP. A subset of fields also apply to
  /// [autoProvisioningLocations] The list of Google Compute Engine
  /// [autoscalingProfile] Configuration
  /// [defaultComputeClassEnabled] Specifies whether default compute class behaviour is enabled. If enabled, cluster autoscaler will use Compute Class with name default for all the workloads, if not overriden.
  /// [enabled] Whether node auto-provisioning is enabled. Must be supplied for GKE Standard clusters, `true` is implied
  /// [resourceLimits] Global constraints for machine resources in the
  ClusterClusterAutoscaling({
    this.autoProvisioningDefaults,
    this.autoProvisioningLocations,
    this.autoscalingProfile,
    this.defaultComputeClassEnabled,
    this.enabled,
    this.resourceLimits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoProvisioningDefaultsValue = autoProvisioningDefaults;
    if (autoProvisioningDefaultsValue != null) {
      map['autoProvisioningDefaults'] = autoProvisioningDefaultsValue.toMap();
    }
    final autoProvisioningLocationsValue = autoProvisioningLocations;
    if (autoProvisioningLocationsValue != null) {
      map['autoProvisioningLocations'] = autoProvisioningLocationsValue;
    }
    final autoscalingProfileValue = autoscalingProfile;
    if (autoscalingProfileValue != null) {
      map['autoscalingProfile'] = autoscalingProfileValue;
    }
    final defaultComputeClassEnabledValue = defaultComputeClassEnabled;
    if (defaultComputeClassEnabledValue != null) {
      map['defaultComputeClassEnabled'] = defaultComputeClassEnabledValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final resourceLimitsValue = resourceLimits;
    if (resourceLimitsValue != null) {
      map['resourceLimits'] = pulumi.Input.encodeList<
          ClusterClusterAutoscalingResourceLimit,
          Map<String, dynamic>>(resourceLimitsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterClusterAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterClusterAutoscaling(
      autoProvisioningDefaults: map['autoProvisioningDefaults'] == null
          ? null
          : ClusterClusterAutoscalingAutoProvisioningDefaults.fromMap(
              (map['autoProvisioningDefaults'] as Map).cast<String, dynamic>()),
      autoProvisioningLocations: map['autoProvisioningLocations'] == null
          ? null
          : (map['autoProvisioningLocations'] as List).cast<String>(),
      autoscalingProfile: map['autoscalingProfile'] == null
          ? null
          : map['autoscalingProfile'] as String,
      defaultComputeClassEnabled: map['defaultComputeClassEnabled'] == null
          ? null
          : map['defaultComputeClassEnabled'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      resourceLimits: map['resourceLimits'] == null
          ? null
          : pulumi.Input.decodeList<ClusterClusterAutoscalingResourceLimit>(
              map['resourceLimits'],
              (value) => ClusterClusterAutoscalingResourceLimit.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
