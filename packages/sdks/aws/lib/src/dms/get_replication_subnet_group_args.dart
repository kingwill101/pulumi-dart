// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_replication_subnet_group_get_replication_subnet_group_args_doc}
/// Arguments for getReplicationSubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_dms_get_replication_subnet_group_get_replication_subnet_group_args_doc}
class GetReplicationSubnetGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  final pulumi.Input<String> replicationSubnetGroupId;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetReplicationSubnetGroupArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSubnetGroupId] Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  /// [tags] Optional.
  const GetReplicationSubnetGroupArgs({
    this.region,
    required this.replicationSubnetGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationSubnetGroupId': replicationSubnetGroupId,
      'tags': ?tags,
    };
  }

  factory GetReplicationSubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationSubnetGroupArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationSubnetGroupId: pulumi.Input.fromValue(map['replicationSubnetGroupId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
