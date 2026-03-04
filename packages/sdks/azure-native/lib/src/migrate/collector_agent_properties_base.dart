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
      'spnDetails':
          ?pulumi.Input.mapOptionalInputValue<
            CollectorAgentSpnPropertiesBase,
            Map<String, dynamic>
          >(spnDetails, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory CollectorAgentPropertiesBase.fromMap(Map<String, dynamic> map) {
    return CollectorAgentPropertiesBase(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastHeartbeatUtc: (() {
        final guardedValue = map['lastHeartbeatUtc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spnDetails: (() {
        final guardedValue = map['spnDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CollectorAgentSpnPropertiesBase.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
