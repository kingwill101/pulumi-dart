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
      clusterType: (() {
        final guardedValue = map['clusterType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterVersion: (() {
        final guardedValue = map['clusterVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeType: (() {
        final guardedValue = map['nodeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredNodeTypes: (() {
        final guardedValue = map['preferredNodeTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
