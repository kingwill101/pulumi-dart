// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_odb_get_cloud_vm_clusters_get_cloud_vm_clusters_args_doc}
/// Arguments for getCloudVmClusters.
/// {@endtemplate}
/// {@macro pulumi_odb_get_cloud_vm_clusters_get_cloud_vm_clusters_args_doc}
class GetCloudVmClustersArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCloudVmClustersArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCloudVmClustersArgs({
    String? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetCloudVmClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

