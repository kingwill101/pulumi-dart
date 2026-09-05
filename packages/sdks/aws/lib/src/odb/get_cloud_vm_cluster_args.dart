// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
/// Arguments for getCloudVmCluster.
/// {@endtemplate}
/// {@macro pulumi_odb_get_cloud_vm_cluster_get_cloud_vm_cluster_args_doc}
class GetCloudVmClusterArgs {
  /// Unique identifier of the cloud vm cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetCloudVmClusterArgs].
  /// [id] Unique identifier of the cloud vm cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetCloudVmClusterArgs({
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
    };
  }

  factory GetCloudVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
