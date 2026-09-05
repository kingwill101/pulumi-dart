// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetComputeCapacity {
  /// Number of currently available instances that can be used to stream sessions.
  final pulumi.Input<int?>? available;
  /// Desired number of streaming instances.
  final pulumi.Input<int?>? desiredInstances;
  /// Desired number of user sessions for a multi-session fleet. This is not allowed for single-session fleets.
  final pulumi.Input<int?>? desiredSessions;
  /// Number of instances in use for streaming.
  final pulumi.Input<int?>? inUse;
  /// Total number of simultaneous streaming instances that are running.
  final pulumi.Input<int?>? running;

  /// Creates a new [FleetComputeCapacity].
  /// [available] Number of currently available instances that can be used to stream sessions.
  /// [desiredInstances] Desired number of streaming instances.
  /// [desiredSessions] Desired number of user sessions for a multi-session fleet. This is not allowed for single-session fleets.
  /// [inUse] Number of instances in use for streaming.
  /// [running] Total number of simultaneous streaming instances that are running.
  const FleetComputeCapacity({
    this.available,
    this.desiredInstances,
    this.desiredSessions,
    this.inUse,
    this.running,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': ?available,
      'desiredInstances': ?desiredInstances,
      'desiredSessions': ?desiredSessions,
      'inUse': ?inUse,
      'running': ?running,
    };
  }

  factory FleetComputeCapacity.fromMap(Map<String, dynamic> map) {
    return FleetComputeCapacity(
      available: (() { final guardedValue = map['available']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      desiredInstances: (() { final guardedValue = map['desiredInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      desiredSessions: (() { final guardedValue = map['desiredSessions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      inUse: (() { final guardedValue = map['inUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      running: (() { final guardedValue = map['running']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
