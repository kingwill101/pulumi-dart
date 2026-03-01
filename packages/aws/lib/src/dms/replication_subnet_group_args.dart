// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_replication_subnet_group_replication_subnet_group_args_doc}
/// The set of arguments for ReplicationSubnetGroup.
/// {@endtemplate}
/// {@macro pulumi_dms_replication_subnet_group_replication_subnet_group_args_doc}
class ReplicationSubnetGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Description for the subnet group.
  final pulumi.Input<String> replicationSubnetGroupDescription;

  /// Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  final pulumi.Input<String> replicationSubnetGroupId;

  /// List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  final pulumi.Input<List<String>> subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ReplicationSubnetGroupArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSubnetGroupDescription] Description for the subnet group.
  /// [replicationSubnetGroupId] Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  /// [subnetIds] List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ReplicationSubnetGroupArgs({
    String? region,
    required String replicationSubnetGroupDescription,
    required String replicationSubnetGroupId,
    required List<String> subnetIds,
    Map<String, String>? tags,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       replicationSubnetGroupDescription = pulumi.Input.asInput<String>(
         replicationSubnetGroupDescription,
       ),
       replicationSubnetGroupId = pulumi.Input.asInput<String>(
         replicationSubnetGroupId,
       ),
       subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationSubnetGroupDescription': replicationSubnetGroupDescription,
      'replicationSubnetGroupId': replicationSubnetGroupId,
      'subnetIds': subnetIds,
      'tags': ?tags,
    };
  }

  factory ReplicationSubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationSubnetGroupArgs(
      region: map['region'] == null ? null : map['region'] as String,
      replicationSubnetGroupDescription:
          map['replicationSubnetGroupDescription'] as String,
      replicationSubnetGroupId: map['replicationSubnetGroupId'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
