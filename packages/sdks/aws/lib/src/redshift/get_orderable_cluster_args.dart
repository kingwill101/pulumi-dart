// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_get_orderable_cluster_get_orderable_cluster_args_doc}
/// Arguments for getOrderableCluster.
/// {@endtemplate}
/// {@macro pulumi_redshift_get_orderable_cluster_get_orderable_cluster_args_doc}
class GetOrderableClusterArgs {
  /// Reshift Cluster typeE.g., `multi-node` or `single-node`
  final pulumi.Input<String>? clusterType;
  /// Redshift Cluster versionE.g., `1.0`
  final pulumi.Input<String>? clusterVersion;
  /// Redshift Cluster node typeE.g., `dc2.8xlarge`
  final pulumi.Input<String>? nodeType;
  /// Ordered list of preferred Redshift Cluster node types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.
  final pulumi.Input<List<String>>? preferredNodeTypes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetOrderableClusterArgs].
  /// [clusterType] Reshift Cluster typeE.g., `multi-node` or `single-node`
  /// [clusterVersion] Redshift Cluster versionE.g., `1.0`
  /// [nodeType] Redshift Cluster node typeE.g., `dc2.8xlarge`
  /// [preferredNodeTypes] Ordered list of preferred Redshift Cluster node types. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetOrderableClusterArgs({
    this.clusterType,
    this.clusterVersion,
    this.nodeType,
    this.preferredNodeTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterType': ?clusterType,
      'clusterVersion': ?clusterVersion,
      'nodeType': ?nodeType,
      'preferredNodeTypes': ?preferredNodeTypes,
      'region': ?region,
    };
  }

  factory GetOrderableClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderableClusterArgs(
      clusterType: map['clusterType'] == null ? null : (map['clusterType'] as String).input(),
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion'] as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      preferredNodeTypes: map['preferredNodeTypes'] == null ? null : ((map['preferredNodeTypes'] as List).cast<String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

