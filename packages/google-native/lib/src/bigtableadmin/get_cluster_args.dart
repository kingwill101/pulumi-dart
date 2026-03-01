// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_get_cluster_args_doc}
class GetClusterArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClusterArgs].
  /// [clusterId] Required.
  /// [instanceId] Required.
  /// [project] Optional.
  GetClusterArgs({
    required String clusterId,
    required String instanceId,
    String? project,
  }) : clusterId = pulumi.Input.asInput<String>(clusterId),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterId: map['clusterId'] as String,
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
