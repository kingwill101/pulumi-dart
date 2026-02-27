// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrderableCluster.
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

  GetOrderableClusterArgs({
    this.clusterType,
    this.clusterVersion,
    this.nodeType,
    this.preferredNodeTypes,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterTypeValue = clusterType;
    if (clusterTypeValue != null) {
      map['clusterType'] = clusterTypeValue;
    }
    final clusterVersionValue = clusterVersion;
    if (clusterVersionValue != null) {
      map['clusterVersion'] = clusterVersionValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final preferredNodeTypesValue = preferredNodeTypes;
    if (preferredNodeTypesValue != null) {
      map['preferredNodeTypes'] = preferredNodeTypesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetOrderableClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetOrderableClusterArgs(
      clusterType: pulumi.Input.asOptionalInput<String>(map['clusterType']),
      clusterVersion:
          pulumi.Input.asOptionalInput<String>(map['clusterVersion']),
      nodeType: pulumi.Input.asOptionalInput<String>(map['nodeType']),
      preferredNodeTypes:
          pulumi.Input.asOptionalInput<List<String>>(map['preferredNodeTypes']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
