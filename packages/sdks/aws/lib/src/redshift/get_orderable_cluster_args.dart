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
    pulumi.Output<String>? clusterType,
    pulumi.Output<String>? clusterVersion,
    pulumi.Output<String>? nodeType,
    pulumi.Output<List<String>>? preferredNodeTypes,
    pulumi.Output<String>? region,
  }) :
      clusterType = pulumi.Input.asOptionalInput<String>(clusterType),
      clusterVersion = pulumi.Input.asOptionalInput<String>(clusterVersion),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      preferredNodeTypes = pulumi.Input.asOptionalInput<List<String>>(preferredNodeTypes),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      clusterType: map['clusterType'] == null ? null : pulumi.Output.create<String>(map['clusterType'] as String),
      clusterVersion: map['clusterVersion'] == null ? null : pulumi.Output.create<String>(map['clusterVersion'] as String),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      preferredNodeTypes: map['preferredNodeTypes'] == null ? null : pulumi.Output.create<List<String>>((map['preferredNodeTypes'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

