// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1beta_get_cluster_alloydb_v1beta_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1beta_get_cluster_alloydb_v1beta_args_doc}
class GetClusterAlloydbV1betaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetClusterAlloydbV1betaArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetClusterAlloydbV1betaArgs({
    required String clusterId,
    required String location,
    String? project,
    String? view,
  }) : clusterId = pulumi.Input.asInput<String>(clusterId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetClusterAlloydbV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterAlloydbV1betaArgs(
      clusterId: map['clusterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
