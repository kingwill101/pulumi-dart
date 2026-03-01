// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReplicationSubnetGroup resources.
class ReplicationSubnetGroupState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? replicationSubnetGroupArn;
  /// Description for the subnet group.
  final pulumi.Input<String>? replicationSubnetGroupDescription;
  /// Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  final pulumi.Input<String>? replicationSubnetGroupId;
  /// List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the VPC the subnet group is in.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ReplicationSubnetGroupState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationSubnetGroupArn] Optional.
  /// [replicationSubnetGroupDescription] Description for the subnet group.
  /// [replicationSubnetGroupId] Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be `default`.
  /// [subnetIds] List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The ID of the VPC the subnet group is in.
  ReplicationSubnetGroupState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? replicationSubnetGroupArn,
    pulumi.Output<String>? replicationSubnetGroupDescription,
    pulumi.Output<String>? replicationSubnetGroupId,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationSubnetGroupArn = pulumi.Input.asOptionalInput<String>(replicationSubnetGroupArn),
      replicationSubnetGroupDescription = pulumi.Input.asOptionalInput<String>(replicationSubnetGroupDescription),
      replicationSubnetGroupId = pulumi.Input.asOptionalInput<String>(replicationSubnetGroupId),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'replicationSubnetGroupArn': ?replicationSubnetGroupArn,
      'replicationSubnetGroupDescription': ?replicationSubnetGroupDescription,
      'replicationSubnetGroupId': ?replicationSubnetGroupId,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory ReplicationSubnetGroupState.fromMap(Map<String, dynamic> map) {
    return ReplicationSubnetGroupState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationSubnetGroupArn: map['replicationSubnetGroupArn'] == null ? null : pulumi.Output.create<String>(map['replicationSubnetGroupArn'] as String),
      replicationSubnetGroupDescription: map['replicationSubnetGroupDescription'] == null ? null : pulumi.Output.create<String>(map['replicationSubnetGroupDescription'] as String),
      replicationSubnetGroupId: map['replicationSubnetGroupId'] == null ? null : pulumi.Output.create<String>(map['replicationSubnetGroupId'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

