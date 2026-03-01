// ignore_for_file: unused_element, unnecessary_cast

import 'collector_agent_properties_response.dart';

class CollectorPropertiesResponse {
  final CollectorAgentPropertiesResponse? agentProperties;
  /// Time when this collector was created. Date-Time represented in ISO-8601 format.
  final String createdTimestamp;
  /// The ARM id of the discovery service site.
  final String? discoverySiteId;
  /// Time when this collector was updated. Date-Time represented in ISO-8601 format.
  final String updatedTimestamp;

  /// Creates a new [CollectorPropertiesResponse].
  /// [agentProperties] Optional.
  /// [createdTimestamp] Time when this collector was created. Date-Time represented in ISO-8601 format.
  /// [discoverySiteId] The ARM id of the discovery service site.
  /// [updatedTimestamp] Time when this collector was updated. Date-Time represented in ISO-8601 format.
  CollectorPropertiesResponse({
    this.agentProperties,
    required this.createdTimestamp,
    this.discoverySiteId,
    required this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentProperties': ?agentProperties == null ? null : agentProperties!.toMap(),
      'createdTimestamp': createdTimestamp,
      'discoverySiteId': ?discoverySiteId,
      'updatedTimestamp': updatedTimestamp,
    };
  }

  factory CollectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CollectorPropertiesResponse(
      agentProperties: map['agentProperties'] == null ? null : CollectorAgentPropertiesResponse.fromMap((map['agentProperties'] as Map).cast<String, dynamic>()),
      createdTimestamp: map['createdTimestamp'] as String,
      discoverySiteId: map['discoverySiteId'] == null ? null : map['discoverySiteId'] as String,
      updatedTimestamp: map['updatedTimestamp'] as String,
    );
  }
}

