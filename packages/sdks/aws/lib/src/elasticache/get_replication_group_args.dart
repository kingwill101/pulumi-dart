// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticache_get_replication_group_get_replication_group_args_doc}
/// Arguments for getReplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticache_get_replication_group_get_replication_group_args_doc}
class GetReplicationGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier for the replication group.
  final pulumi.Input<String> replicationGroupId;

  /// Creates a new [GetReplicationGroupArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationGroupId] Identifier for the replication group.
  GetReplicationGroupArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> replicationGroupId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationGroupId = pulumi.Input.asInput<String>(replicationGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationGroupId': replicationGroupId,
    };
  }

  factory GetReplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationGroupArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationGroupId: pulumi.Output.create<String>(map['replicationGroupId'] as String),
    );
  }
}

