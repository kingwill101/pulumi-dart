// ignore_for_file: unused_element, unnecessary_cast

class FleetComputeCapacity {
  /// Number of currently available instances that can be used to stream sessions.
  final int? available;

  /// Desired number of streaming instances.
  final int? desiredInstances;

  /// Desired number of user sessions for a multi-session fleet. This is not allowed for single-session fleets.
  final int? desiredSessions;

  /// Number of instances in use for streaming.
  final int? inUse;

  /// Total number of simultaneous streaming instances that are running.
  final int? running;

  /// Creates a new [FleetComputeCapacity].
  /// [available] Number of currently available instances that can be used to stream sessions.
  /// [desiredInstances] Desired number of streaming instances.
  /// [desiredSessions] Desired number of user sessions for a multi-session fleet. This is not allowed for single-session fleets.
  /// [inUse] Number of instances in use for streaming.
  /// [running] Total number of simultaneous streaming instances that are running.
  FleetComputeCapacity({
    this.available,
    this.desiredInstances,
    this.desiredSessions,
    this.inUse,
    this.running,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availableValue = available;
    if (availableValue != null) {
      map['available'] = availableValue;
    }
    final desiredInstancesValue = desiredInstances;
    if (desiredInstancesValue != null) {
      map['desiredInstances'] = desiredInstancesValue;
    }
    final desiredSessionsValue = desiredSessions;
    if (desiredSessionsValue != null) {
      map['desiredSessions'] = desiredSessionsValue;
    }
    final inUseValue = inUse;
    if (inUseValue != null) {
      map['inUse'] = inUseValue;
    }
    final runningValue = running;
    if (runningValue != null) {
      map['running'] = runningValue;
    }
    return map;
  }

  factory FleetComputeCapacity.fromMap(Map<String, dynamic> map) {
    return FleetComputeCapacity(
      available: map['available'] == null ? null : map['available'] as int,
      desiredInstances: map['desiredInstances'] == null
          ? null
          : map['desiredInstances'] as int,
      desiredSessions:
          map['desiredSessions'] == null ? null : map['desiredSessions'] as int,
      inUse: map['inUse'] == null ? null : map['inUse'] as int,
      running: map['running'] == null ? null : map['running'] as int,
    );
  }
}
