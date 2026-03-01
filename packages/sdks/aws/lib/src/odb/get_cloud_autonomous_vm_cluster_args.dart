// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_cloud_autonomous_vm_cluster_get_cloud_autonomous_vm_cluster_args_doc}
/// Arguments for getCloudAutonomousVmCluster.
/// {@endtemplate}
/// {@macro pulumi_odb_get_cloud_autonomous_vm_cluster_get_cloud_autonomous_vm_cluster_args_doc}
class GetCloudAutonomousVmClusterArgs {
  /// The unique identifier of the cloud autonomous vm cluster.
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCloudAutonomousVmClusterArgs].
  /// [id] The unique identifier of the cloud autonomous vm cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCloudAutonomousVmClusterArgs({
    required pulumi.Output<String> id,
    pulumi.Output<String>? region,
  }) :
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
    };
  }

  factory GetCloudAutonomousVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClusterArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

