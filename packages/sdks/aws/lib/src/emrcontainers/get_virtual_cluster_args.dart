// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emrcontainers_get_virtual_cluster_get_virtual_cluster_args_doc}
/// Arguments for getVirtualCluster.
/// {@endtemplate}
/// {@macro pulumi_emrcontainers_get_virtual_cluster_get_virtual_cluster_args_doc}
class GetVirtualClusterArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the cluster.
  final pulumi.Input<String> virtualClusterId;

  /// Creates a new [GetVirtualClusterArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags.
  /// [virtualClusterId] ID of the cluster.
  const GetVirtualClusterArgs({
    this.region,
    this.tags,
    required this.virtualClusterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'virtualClusterId': virtualClusterId,
    };
  }

  factory GetVirtualClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualClusterId: pulumi.Input.fromValue(map['virtualClusterId'] as String),
    );
  }
}
