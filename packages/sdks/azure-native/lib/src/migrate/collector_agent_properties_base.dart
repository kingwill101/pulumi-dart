// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_agent_spn_properties_base.dart';

/// Collector agent property class.
class CollectorAgentPropertiesBase {
  /// Gets the collector agent id.
  final pulumi.Input<String>? id;
  /// Gets the collector last heartbeat time.
  final pulumi.Input<String>? lastHeartbeatUtc;
  /// Gets or sets the SPN details.
  final pulumi.Input<CollectorAgentSpnPropertiesBase>? spnDetails;
  /// Gets the collector agent version.
  final pulumi.Input<String>? version;

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
      'spnDetails': ?pulumi.Input.mapOptionalInputValue<CollectorAgentSpnPropertiesBase, Map<String, dynamic>>(spnDetails, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory CollectorAgentPropertiesBase.fromMap(Map<String, dynamic> map) {
    return CollectorAgentPropertiesBase(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      lastHeartbeatUtc: map['lastHeartbeatUtc'] == null ? null : (map['lastHeartbeatUtc'] as String).input(),
      spnDetails: map['spnDetails'] == null ? null : (CollectorAgentSpnPropertiesBase.fromMap((map['spnDetails'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

