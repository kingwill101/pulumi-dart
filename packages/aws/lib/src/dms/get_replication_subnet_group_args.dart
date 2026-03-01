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
  GetReplicationSubnetGroupArgs({
    String? region,
    required String replicationSubnetGroupId,
    Map<String, String>? tags,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationSubnetGroupId = pulumi.Input.asInput<String>(replicationSubnetGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationSubnetGroupId': replicationSubnetGroupId,
      'tags': ?tags,
    };
  }

  factory GetReplicationSubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationSubnetGroupArgs(
      region: map['region'] == null ? null : map['region'] as String,
      replicationSubnetGroupId: map['replicationSubnetGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

