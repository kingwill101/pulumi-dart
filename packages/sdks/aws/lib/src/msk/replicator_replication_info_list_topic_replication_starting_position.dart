// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorReplicationInfoListTopicReplicationStartingPosition {
  /// The type of replication starting position. Supports `LATEST` and `EARLIEST`.
  final pulumi.Input<String>? type;

  /// Creates a new [ReplicatorReplicationInfoListTopicReplicationStartingPosition].
  /// [type] The type of replication starting position. Supports `LATEST` and `EARLIEST`.
  const ReplicatorReplicationInfoListTopicReplicationStartingPosition({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ReplicatorReplicationInfoListTopicReplicationStartingPosition.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListTopicReplicationStartingPosition(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
