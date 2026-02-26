// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ReplicationSubnetGroup.
class ReplicationSubnetGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Description for the subnet group.
  final Input<String> replicationSubnetGroupDescription;

  /// Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final Input<String> replicationSubnetGroupId;

  /// List of at least 2 EC2 subnet IDs for the subnet group. The subnets must cover at least 2 availability zones.
  final Input<List<String>> subnetIds;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ReplicationSubnetGroupArgs({
    this.region,
    required this.replicationSubnetGroupDescription,
    required this.replicationSubnetGroupId,
    required this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationSubnetGroupDescription'] =
        replicationSubnetGroupDescription;
    map['replicationSubnetGroupId'] = replicationSubnetGroupId;
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ReplicationSubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationSubnetGroupArgs(
      region: Input.asOptionalInput<String>(map['region']),
      replicationSubnetGroupDescription:
          Input.asInput<String>(map['replicationSubnetGroupDescription']),
      replicationSubnetGroupId:
          Input.asInput<String>(map['replicationSubnetGroupId']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
