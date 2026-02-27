// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReplicationInstance.
class GetReplicationInstanceArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The replication instance identifier.
  final pulumi.Input<String> replicationInstanceId;
  final pulumi.Input<Map<String, String>>? tags;

  GetReplicationInstanceArgs({
    this.region,
    required this.replicationInstanceId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationInstanceId'] = replicationInstanceId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetReplicationInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationInstanceArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationInstanceId:
          pulumi.Input.asInput<String>(map['replicationInstanceId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
