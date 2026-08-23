// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_outpost_config_control_plane_placement.dart';
import 'get_cluster_outpost_config_etcd_placement.dart';

class GetClusterOutpostConfig {
  /// The Amazon EC2 instance type for all Kubernetes control plane instances.
  final pulumi.Input<String> controlPlaneInstanceType;
  /// An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
  final pulumi.Input<List<GetClusterOutpostConfigControlPlanePlacement>> controlPlanePlacements;
  /// Amazon EC2 instance type for etcd instances.
  final pulumi.Input<String> etcdInstanceType;
  /// Placement configuration for the etcd instances.
  final pulumi.Input<List<GetClusterOutpostConfigEtcdPlacement>> etcdPlacements;
  /// List of ARNs of the Outposts hosting the EKS cluster. Only a single ARN is supported currently.
  final pulumi.Input<List<String>> outpostArns;

  /// Creates a new [GetClusterOutpostConfig].
  /// [controlPlaneInstanceType] The Amazon EC2 instance type for all Kubernetes control plane instances.
  /// [controlPlanePlacements] An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
  /// [etcdInstanceType] Amazon EC2 instance type for etcd instances.
  /// [etcdPlacements] Placement configuration for the etcd instances.
  /// [outpostArns] List of ARNs of the Outposts hosting the EKS cluster. Only a single ARN is supported currently.
  const GetClusterOutpostConfig({
    required this.controlPlaneInstanceType,
    required this.controlPlanePlacements,
    required this.etcdInstanceType,
    required this.etcdPlacements,
    required this.outpostArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneInstanceType': controlPlaneInstanceType,
      'controlPlanePlacements': pulumi.Input.mapInputValue<List<GetClusterOutpostConfigControlPlanePlacement>, List<Map<String, dynamic>>>(controlPlanePlacements, (value) => pulumi.Input.encodeList<GetClusterOutpostConfigControlPlanePlacement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etcdInstanceType': etcdInstanceType,
      'etcdPlacements': pulumi.Input.mapInputValue<List<GetClusterOutpostConfigEtcdPlacement>, List<Map<String, dynamic>>>(etcdPlacements, (value) => pulumi.Input.encodeList<GetClusterOutpostConfigEtcdPlacement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outpostArns': outpostArns,
    };
  }

  factory GetClusterOutpostConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterOutpostConfig(
      controlPlaneInstanceType: pulumi.Input.fromValue(map['controlPlaneInstanceType'] as String),
      controlPlanePlacements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterOutpostConfigControlPlanePlacement>(map['controlPlanePlacements']!, (value) => GetClusterOutpostConfigControlPlanePlacement.fromMap((value as Map).cast<String, dynamic>()))),
      etcdInstanceType: pulumi.Input.fromValue(map['etcdInstanceType'] as String),
      etcdPlacements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterOutpostConfigEtcdPlacement>(map['etcdPlacements']!, (value) => GetClusterOutpostConfigEtcdPlacement.fromMap((value as Map).cast<String, dynamic>()))),
      outpostArns: pulumi.Input.fromValue((map['outpostArns'] as List).cast<String>()),
    );
  }
}
