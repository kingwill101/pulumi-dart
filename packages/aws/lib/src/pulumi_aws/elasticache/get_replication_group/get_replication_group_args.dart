// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReplicationGroup.
class GetReplicationGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier for the replication group.
  final pulumi.Input<String> replicationGroupId;

  GetReplicationGroupArgs({
    this.region,
    required this.replicationGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationGroupId'] = replicationGroupId;
    return map;
  }

  factory GetReplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationGroupArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationGroupId:
          pulumi.Input.asInput<String>(map['replicationGroupId']),
    );
  }
}
