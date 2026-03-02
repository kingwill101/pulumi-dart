// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties.dart';

class CollectorProperties {
  final pulumi.Input<CollectorAgentProperties>? agentProperties;
  /// The ARM id of the discovery service site.
  final pulumi.Input<String>? discoverySiteId;

  /// Creates a new [CollectorProperties].
  /// [agentProperties] Optional.
  /// [discoverySiteId] The ARM id of the discovery service site.
  CollectorProperties({
    this.agentProperties,
    this.discoverySiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?pulumi.Input.mapOptionalInputValue<CollectorAgentProperties, Map<String, dynamic>>(agentProperties, (value) => value.toMap()),
      'discoverySiteId': ?discoverySiteId,
    };
  }

  factory CollectorProperties.fromMap(Map<String, dynamic> map) {
    return CollectorProperties(
      agentProperties: map['agentProperties'] == null ? null : (CollectorAgentProperties.fromMap((map['agentProperties']! as Map).cast<String, dynamic>())).input(),
      discoverySiteId: map['discoverySiteId'] == null ? null : (map['discoverySiteId']! as String).input(),
    );
  }
}

