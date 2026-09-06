// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_body_agent_spn_properties_response.dart';

class CollectorAgentPropertiesResponse {
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastHeartbeatUtc;
  final pulumi.Input<CollectorBodyAgentSpnPropertiesResponse?>? spnDetails;
  final pulumi.Input<String> version;

  /// Creates a new [CollectorAgentPropertiesResponse].
  /// [id] Required.
  /// [lastHeartbeatUtc] Required.
  /// [spnDetails] Optional.
  /// [version] Required.
  const CollectorAgentPropertiesResponse({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      lastHeartbeatUtc: pulumi.Input.fromValue(map['lastHeartbeatUtc'] as String),
      spnDetails: (() { final guardedValue = map['spnDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CollectorBodyAgentSpnPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
