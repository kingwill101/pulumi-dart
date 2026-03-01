// ignore_for_file: unused_element, unnecessary_cast

import 'collector_agent_spn_properties_base.dart';

/// Collector agent property class.
class CollectorAgentPropertiesBase {
  /// Gets the collector agent id.
  final String? id;
  /// Gets the collector last heartbeat time.
  final String? lastHeartbeatUtc;
  /// Gets or sets the SPN details.
  final CollectorAgentSpnPropertiesBase? spnDetails;
  /// Gets the collector agent version.
  final String? version;

  /// Creates a new [CollectorAgentPropertiesBase].
  /// [id] Gets the collector agent id.
  /// [lastHeartbeatUtc] Gets the collector last heartbeat time.
  /// [spnDetails] Gets or sets the SPN details.
  /// [version] Gets the collector agent version.
  CollectorAgentPropertiesBase({
    this.id,
    this.lastHeartbeatUtc,
    this.spnDetails,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'lastHeartbeatUtc': ?lastHeartbeatUtc,
      'spnDetails': ?spnDetails == null ? null : spnDetails!.toMap(),
      'version': ?version,
    };
  }

  factory CollectorAgentPropertiesBase.fromMap(Map<String, dynamic> map) {
    return CollectorAgentPropertiesBase(
      id: map['id'] == null ? null : map['id'] as String,
      lastHeartbeatUtc: map['lastHeartbeatUtc'] == null ? null : map['lastHeartbeatUtc'] as String,
      spnDetails: map['spnDetails'] == null ? null : CollectorAgentSpnPropertiesBase.fromMap((map['spnDetails'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

