// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration {
  /// The type of topic configuration name. Supports `PREFIXED_WITH_SOURCE_CLUSTER_ALIAS` and `IDENTICAL`.
  final pulumi.Input<String>? type;

  /// Creates a new [ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration].
  /// [type] The type of topic configuration name. Supports `PREFIXED_WITH_SOURCE_CLUSTER_ALIAS` and `IDENTICAL`.
  const ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration.fromMap(Map<String, dynamic> map) {
    return ReplicatorReplicationInfoListTopicReplicationTopicNameConfiguration(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

