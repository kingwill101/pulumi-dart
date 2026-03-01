// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_cluster_args_doc}
class GetClusterArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetClusterArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetClusterArgs({
    required String clusterId,
    required String location,
    required String privateCloudId,
    String? project,
  }) : clusterId = pulumi.Input.asInput<String>(clusterId),
       location = pulumi.Input.asInput<String>(location),
       privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterId: map['clusterId'] as String,
      location: map['location'] as String,
      privateCloudId: map['privateCloudId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
