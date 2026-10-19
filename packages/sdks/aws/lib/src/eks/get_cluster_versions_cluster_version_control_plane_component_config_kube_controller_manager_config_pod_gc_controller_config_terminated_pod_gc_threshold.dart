// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_versions_cluster_version_control_plane_component_config_kube_controller_manager_config_pod_gc_controller_config_terminated_pod_gc_threshold_constraint.dart';

class GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold {
  /// Scoring strategy constraints.
  final pulumi.Input<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint>> constraints;
  /// Default scoring strategy (`type`, `resources`).
  final pulumi.Input<int> defaultValue;

  /// Creates a new [GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold].
  /// [constraints] Scoring strategy constraints.
  /// [defaultValue] Default scoring strategy (`type`, `resources`).
  const GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold({
    required this.constraints,
    required this.defaultValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraints': pulumi.Input.mapInputValue<List<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint>, List<Map<String, dynamic>>>(constraints, (value) => pulumi.Input.encodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultValue': defaultValue,
    };
  }

  factory GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold.fromMap(Map<String, dynamic> map) {
    return GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThreshold(
      constraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint>(map['constraints']!, (value) => GetClusterVersionsClusterVersionControlPlaneComponentConfigKubeControllerManagerConfigPodGcControllerConfigTerminatedPodGcThresholdConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      defaultValue: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['defaultValue'])),
    );
  }
}
