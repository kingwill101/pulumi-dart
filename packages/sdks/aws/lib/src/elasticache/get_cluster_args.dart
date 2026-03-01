// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_get_cluster_get_cluster_args_doc}
/// Arguments for getCluster.
/// {@endtemplate}
/// {@macro pulumi_elasticache_get_cluster_get_cluster_args_doc}
class GetClusterArgs {
  /// Group identifier.
  final pulumi.Input<String> clusterId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags assigned to the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClusterArgs].
  /// [clusterId] Group identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags assigned to the resource
  GetClusterArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

