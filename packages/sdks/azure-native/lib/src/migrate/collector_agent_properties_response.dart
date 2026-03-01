// ignore_for_file: unused_element, unnecessary_cast

import 'collector_body_agent_spn_properties_response.dart';

class CollectorAgentPropertiesResponse {
  final String id;
  final String lastHeartbeatUtc;
  final CollectorBodyAgentSpnPropertiesResponse? spnDetails;
  final String version;

  /// Creates a new [CollectorAgentPropertiesResponse].
  /// [id] Required.
  /// [lastHeartbeatUtc] Required.
  /// [spnDetails] Optional.
  /// [version] Required.
  CollectorAgentPropertiesResponse({
    required this.id,
    required this.lastHeartbeatUtc,
    this.spnDetails,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'lastHeartbeatUtc': lastHeartbeatUtc,
      'spnDetails': ?spnDetails == null ? null : spnDetails!.toMap(),
      'version': version,
    };
  }

  factory CollectorAgentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CollectorAgentPropertiesResponse(
      id: map['id'] as String,
      lastHeartbeatUtc: map['lastHeartbeatUtc'] as String,
      spnDetails: map['spnDetails'] == null ? null : CollectorBodyAgentSpnPropertiesResponse.fromMap((map['spnDetails'] as Map).cast<String, dynamic>()),
      version: map['version'] as String,
    );
  }
}

