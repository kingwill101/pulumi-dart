// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReplicationTask.
class GetReplicationTaskArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The replication task identifier.
  final pulumi.Input<String> replicationTaskId;
  final pulumi.Input<Map<String, String>>? tags;

  GetReplicationTaskArgs({
    this.region,
    required this.replicationTaskId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationTaskId'] = replicationTaskId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetReplicationTaskArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationTaskArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationTaskId: pulumi.Input.asInput<String>(map['replicationTaskId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
