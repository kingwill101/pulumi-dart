// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_properties_response.dart';

class CollectorPropertiesResponse {
  final pulumi.Input<CollectorAgentPropertiesResponse>? agentProperties;
  /// Time when this collector was created. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> createdTimestamp;
  /// The ARM id of the discovery service site.
  final pulumi.Input<String>? discoverySiteId;
  /// Time when this collector was updated. Date-Time represented in ISO-8601 format.
  final pulumi.Input<String> updatedTimestamp;

  /// Creates a new [CollectorPropertiesResponse].
  /// [agentProperties] Optional.
  /// [createdTimestamp] Time when this collector was created. Date-Time represented in ISO-8601 format.
  /// [discoverySiteId] The ARM id of the discovery service site.
  /// [updatedTimestamp] Time when this collector was updated. Date-Time represented in ISO-8601 format.
  const CollectorPropertiesResponse({
    this.agentProperties,
    required this.createdTimestamp,
    this.discoverySiteId,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?pulumi.Input.mapOptionalInputValue<CollectorAgentPropertiesResponse, Map<String, dynamic>>(agentProperties, (value) => value.toMap()),
      'createdTimestamp': createdTimestamp,
      'discoverySiteId': ?discoverySiteId,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory CollectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CollectorPropertiesResponse(
      agentProperties: (() { final guardedValue = map['agentProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectorAgentPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdTimestamp: pulumi.Input.fromValue(map['createdTimestamp'] as String),
      discoverySiteId: (() { final guardedValue = map['discoverySiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedTimestamp: pulumi.Input.fromValue(map['updatedTimestamp'] as String),
    );
  }
}

