// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getReplicationSubnetGroup.
class GetReplicationSubnetGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name for the replication subnet group. This value is stored as a lowercase string. It must contain no more than 255 alphanumeric characters, periods, spaces, underscores, or hyphens and cannot be <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>.
  final Input<String> replicationSubnetGroupId;
  final Input<Map<String, String>>? tags;

  GetReplicationSubnetGroupArgs({
    this.region,
    required this.replicationSubnetGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationSubnetGroupId'] = replicationSubnetGroupId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetReplicationSubnetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationSubnetGroupArgs(
      region: Input.asOptionalInput<String>(map['region']),
      replicationSubnetGroupId:
          Input.asInput<String>(map['replicationSubnetGroupId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
