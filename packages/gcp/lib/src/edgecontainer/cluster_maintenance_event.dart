// ignore_for_file: unused_element, unnecessary_cast

class ClusterMaintenanceEvent {
  /// (Output)
  /// The time when the maintenance event request was created.
  final String? createTime;

  /// (Output)
  /// The time when the maintenance event ended, either successfully or not. If
  /// the maintenance event is split into multiple maintenance windows,
  /// end_time is only updated when the whole flow ends.
  final String? endTime;

  /// (Output)
  /// The operation for running the maintenance event. Specified in the format
  /// projects/*/locations/*/operations/*. If the maintenance event is split
  /// into multiple operations (e.g. due to maintenance windows), the latest
  /// one is recorded.
  final String? operation;

  /// (Output)
  /// The schedule of the maintenance event.
  final String? schedule;

  /// (Output)
  /// The time when the maintenance event started.
  final String? startTime;

  /// (Output)
  /// Indicates the maintenance event state.
  final String? state;

  /// The target cluster version. For example: "1.5.0".
  final String? targetVersion;

  /// (Output)
  /// Indicates the maintenance event type.
  final String? type;

  /// (Output)
  /// The time when the maintenance event message was updated.
  final String? updateTime;

  /// (Output)
  /// UUID of the maintenance event.
  final String? uuid;

  /// Creates a new [ClusterMaintenanceEvent].
  /// [createTime] (Output)
  /// [endTime] (Output)
  /// [operation] (Output)
  /// [schedule] (Output)
  /// [startTime] (Output)
  /// [state] (Output)
  /// [targetVersion] The target cluster version. For example: "1.5.0".
  /// [type] (Output)
  /// [updateTime] (Output)
  /// [uuid] (Output)
  ClusterMaintenanceEvent({
    this.createTime,
    this.endTime,
    this.operation,
    this.schedule,
    this.startTime,
    this.state,
    this.targetVersion,
    this.type,
    this.updateTime,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'endTime': ?endTime,
      'operation': ?operation,
      'schedule': ?schedule,
      'startTime': ?startTime,
      'state': ?state,
      'targetVersion': ?targetVersion,
      'type': ?type,
      'updateTime': ?updateTime,
      'uuid': ?uuid,
    };
  }

  factory ClusterMaintenanceEvent.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenanceEvent(
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      operation: map['operation'] == null ? null : map['operation'] as String,
      schedule: map['schedule'] == null ? null : map['schedule'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      targetVersion: map['targetVersion'] == null
          ? null
          : map['targetVersion'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      updateTime: map['updateTime'] == null
          ? null
          : map['updateTime'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}
