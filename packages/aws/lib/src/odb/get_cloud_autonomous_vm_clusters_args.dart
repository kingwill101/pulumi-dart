// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_cloud_autonomous_vm_clusters_get_cloud_autonomous_vm_clusters_args_doc}
/// Arguments for getCloudAutonomousVmClusters.
/// {@endtemplate}
/// {@macro pulumi_odb_get_cloud_autonomous_vm_clusters_get_cloud_autonomous_vm_clusters_args_doc}
class GetCloudAutonomousVmClustersArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCloudAutonomousVmClustersArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCloudAutonomousVmClustersArgs({String? region})
    : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region};
  }

  factory GetCloudAutonomousVmClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClustersArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
