// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_outpost_config_control_plane_placement/cluster_outpost_config_control_plane_placement.dart';

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
  final String controlPlaneInstanceType;

  /// An object representing the placement configuration for all the control plane instances of your local Amazon EKS cluster on AWS Outpost.
  /// The <span pulumi-lang-nodejs="`controlPlanePlacement`" pulumi-lang-dotnet="`ControlPlanePlacement`" pulumi-lang-go="`controlPlanePlacement`" pulumi-lang-python="`control_plane_placement`" pulumi-lang-yaml="`controlPlanePlacement`" pulumi-lang-java="`controlPlanePlacement`">`control_plane_placement`</span> configuration block supports the following arguments:
  final ClusterOutpostConfigControlPlanePlacement? controlPlanePlacement;

  /// The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.
  final List<String> outpostArns;

  ClusterOutpostConfig({
    required this.controlPlaneInstanceType,
    this.controlPlanePlacement,
    required this.outpostArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneInstanceType'] = controlPlaneInstanceType;
    final controlPlanePlacementValue = controlPlanePlacement;
    if (controlPlanePlacementValue != null) {
      map['controlPlanePlacement'] = controlPlanePlacementValue.toMap();
    }
    map['outpostArns'] = outpostArns;
    return map;
  }

  factory ClusterOutpostConfig.fromMap(Map<String, dynamic> map) {
    return ClusterOutpostConfig(
      controlPlaneInstanceType: map['controlPlaneInstanceType'] as String,
      controlPlanePlacement: map['controlPlanePlacement'] == null
          ? null
          : ClusterOutpostConfigControlPlanePlacement.fromMap(
              (map['controlPlanePlacement'] as Map).cast<String, dynamic>()),
      outpostArns: (map['outpostArns'] as List).cast<String>(),
    );
  }
}
