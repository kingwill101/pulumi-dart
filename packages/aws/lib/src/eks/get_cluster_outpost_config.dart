// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_outpost_config_control_plane_placement.dart';

class GetClusterOutpostConfig {
  /// The Amazon EC2 instance type for all Kubernetes control plane instances.
  final String controlPlaneInstanceType;

  /// An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
  final List<GetClusterOutpostConfigControlPlanePlacement>
      controlPlanePlacements;

  /// List of ARNs of the Outposts hosting the EKS cluster. Only a single ARN is supported currently.
  final List<String> outpostArns;

  /// Creates a new [GetClusterOutpostConfig].
  /// [controlPlaneInstanceType] The Amazon EC2 instance type for all Kubernetes control plane instances.
  /// [controlPlanePlacements] An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
  /// [outpostArns] List of ARNs of the Outposts hosting the EKS cluster. Only a single ARN is supported currently.
  GetClusterOutpostConfig({
    required this.controlPlaneInstanceType,
    required this.controlPlanePlacements,
    required this.outpostArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneInstanceType'] = controlPlaneInstanceType;
    map['controlPlanePlacements'] = pulumi.Input.encodeList<
        GetClusterOutpostConfigControlPlanePlacement,
        Map<String, dynamic>>(controlPlanePlacements, (value) => value.toMap());
    map['outpostArns'] = outpostArns;
    return map;
  }

  factory GetClusterOutpostConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterOutpostConfig(
      controlPlaneInstanceType: map['controlPlaneInstanceType'] as String,
      controlPlanePlacements:
          pulumi.Input.decodeList<GetClusterOutpostConfigControlPlanePlacement>(
              map['controlPlanePlacements'],
              (value) => GetClusterOutpostConfigControlPlanePlacement.fromMap(
                  (value as Map).cast<String, dynamic>())),
      outpostArns: (map['outpostArns'] as List).cast<String>(),
    );
  }
}
