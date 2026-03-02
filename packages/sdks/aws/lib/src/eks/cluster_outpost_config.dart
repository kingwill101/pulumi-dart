// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_outpost_config_control_plane_placement.dart';

class ClusterOutpostConfig {
  /// The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts. The instance type that you specify is used for all Kubernetes control plane instances. The instance type can't be changed after cluster creation. Choose an instance type based on the number of nodes that your cluster will have. If your cluster will have:
  ///
  /// * 1–20 nodes, then we recommend specifying a large instance type.
  ///
  /// * 21–100 nodes, then we recommend specifying an xlarge instance type.
  ///
  /// * 101–250 nodes, then we recommend specifying a 2xlarge instance type.
  ///
  /// For a list of the available Amazon EC2 instance types, see Compute and storage in AWS Outposts rack features  The control plane is not automatically scaled by Amazon EKS.
  final pulumi.Input<String> controlPlaneInstanceType;
  /// An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
  /// The `control_plane_placement` configuration block supports the following arguments:
  final pulumi.Input<ClusterOutpostConfigControlPlanePlacement>? controlPlanePlacement;
  /// The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.
  final pulumi.Input<List<String>> outpostArns;

  /// Creates a new [ClusterOutpostConfig].
  /// [controlPlaneInstanceType] The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts. The instance type that you specify is used for all Kubernetes control plane instances. The instance type can't be changed after cluster creation. Choose an instance type based on the number of nodes that your cluster will have. If your cluster will have:
  /// [controlPlanePlacement] An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
  /// [outpostArns] The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.
  ClusterOutpostConfig({
    required this.controlPlaneInstanceType,
    this.controlPlanePlacement,
    required this.outpostArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneInstanceType': controlPlaneInstanceType,
      'controlPlanePlacement': ?pulumi.Input.mapOptionalInputValue<ClusterOutpostConfigControlPlanePlacement, Map<String, dynamic>>(controlPlanePlacement, (value) => value.toMap()),
      'outpostArns': outpostArns,
    };
  }

  factory ClusterOutpostConfig.fromMap(Map<String, dynamic> map) {
    return ClusterOutpostConfig(
      controlPlaneInstanceType: (map['controlPlaneInstanceType'] as String).input(),
      controlPlanePlacement: map['controlPlanePlacement'] == null ? null : (ClusterOutpostConfigControlPlanePlacement.fromMap((map['controlPlanePlacement'] as Map).cast<String, dynamic>())).input(),
      outpostArns: ((map['outpostArns'] as List).cast<String>()).input(),
    );
  }
}

