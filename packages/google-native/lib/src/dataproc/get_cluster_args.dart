// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_cluster_args_doc}
class GetClusterArgs {
  final pulumi.Input<String> clusterName;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// Creates a new [GetClusterArgs].
  /// [clusterName] Required.
  /// [project] Optional.
  /// [region] Required.
  GetClusterArgs({
    required String clusterName,
    String? project,
    required String region,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'project': ?project,
      'region': region,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterName: map['clusterName'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
    );
  }
}

