// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_body_agent_spn_properties_response.dart';

class CollectorAgentPropertiesResponse {
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastHeartbeatUtc;
  final pulumi.Input<CollectorBodyAgentSpnPropertiesResponse>? spnDetails;
  final pulumi.Input<String> version;

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
      'spnDetails': ?pulumi.Input.mapOptionalInputValue<CollectorBodyAgentSpnPropertiesResponse, Map<String, dynamic>>(spnDetails, (value) => value.toMap()),
      'version': version,
    };
  }

  factory CollectorAgentPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CollectorAgentPropertiesResponse(
      id: (map['id'] as String).input(),
      lastHeartbeatUtc: (map['lastHeartbeatUtc'] as String).input(),
      spnDetails: map['spnDetails'] == null ? null : (CollectorBodyAgentSpnPropertiesResponse.fromMap((map['spnDetails']! as Map).cast<String, dynamic>())).input(),
      version: (map['version'] as String).input(),
    );
  }
}

