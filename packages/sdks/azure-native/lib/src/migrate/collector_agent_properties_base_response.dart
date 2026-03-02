// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_spn_properties_base_response.dart';

/// Collector agent property class.
class CollectorAgentPropertiesBaseResponse {
  /// Gets the collector agent id.
  final pulumi.Input<String>? id;
  /// Gets the collector last heartbeat time.
  final pulumi.Input<String>? lastHeartbeatUtc;
  /// Gets or sets the SPN details.
  final pulumi.Input<CollectorAgentSpnPropertiesBaseResponse>? spnDetails;
  /// Gets the collector agent version.
  final pulumi.Input<String>? version;

  /// Creates a new [CollectorAgentPropertiesBaseResponse].
  /// [id] Gets the collector agent id.
  /// [lastHeartbeatUtc] Gets the collector last heartbeat time.
  /// [spnDetails] Gets or sets the SPN details.
  /// [version] Gets the collector agent version.
  CollectorAgentPropertiesBaseResponse({
    this.id,
    this.lastHeartbeatUtc,
    this.spnDetails,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'lastHeartbeatUtc': ?lastHeartbeatUtc,
      'spnDetails': ?pulumi.Input.mapOptionalInputValue<CollectorAgentSpnPropertiesBaseResponse, Map<String, dynamic>>(spnDetails, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory CollectorAgentPropertiesBaseResponse.fromMap(Map<String, dynamic> map) {
    return CollectorAgentPropertiesBaseResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      lastHeartbeatUtc: map['lastHeartbeatUtc'] == null ? null : (map['lastHeartbeatUtc'] as String).input(),
      spnDetails: map['spnDetails'] == null ? null : (CollectorAgentSpnPropertiesBaseResponse.fromMap((map['spnDetails'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

