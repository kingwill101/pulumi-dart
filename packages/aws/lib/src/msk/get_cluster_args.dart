// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_msk_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_msk_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// Name of the cluster.
  final pulumi.Input<String> clusterName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of key-value pairs assigned to the cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClusterArgs].
  /// [clusterName] Name of the cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of key-value pairs assigned to the cluster.
  GetClusterArgs({
    required String clusterName,
    String? region,
    Map<String, String>? tags,
  })  : clusterName = pulumi.Input.asInput<String>(clusterName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterName: map['clusterName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
