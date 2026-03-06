// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CycleTask resources.
class CycleTaskState {
  /// Whether to enable. Value:
  final pulumi.Input<int>? enable;
  /// First execution time.
  final pulumi.Input<int>? firstDateStr;
  /// Interval period.
  final pulumi.Input<int>? intervalPeriod;
  /// Extended information field.
  final pulumi.Input<String>? param;
  /// Unit of scan cycle, value:
  final pulumi.Input<String>? periodUnit;
  /// Added the source of the task.
  final pulumi.Input<String>? source;
  /// Task end time (hours).
  final pulumi.Input<int>? targetEndTime;
  /// Task start time (hours).
  final pulumi.Input<int>? targetStartTime;
  /// The task name.
  /// - **VIRUS_VUL_SCHEDULE_SCAN**: scans for viruses.
  /// - **IMAGE_SCAN**: Image scan.
  /// - **EMG_VUL_SCHEDULE_SCAN**: Emergency vulnerability scanning.
  final pulumi.Input<String>? taskName;
  /// The task type.
  /// - **VIRUS_VUL_SCHEDULE_SCAN**: scans for viruses.
  /// - **IMAGE_SCAN**: Image scan.
  /// - **EMG_VUL_SCHEDULE_SCAN**: Emergency vulnerability scanning.
  final pulumi.Input<String>? taskType;

  /// Creates a new [CycleTaskState].
  /// [enable] Whether to enable. Value:
  /// [firstDateStr] First execution time.
  /// [intervalPeriod] Interval period.
  /// [param] Extended information field.
  /// [periodUnit] Unit of scan cycle, value:
  /// [source] Added the source of the task.
  /// [targetEndTime] Task end time (hours).
  /// [targetStartTime] Task start time (hours).
  /// [taskName] The task name.
  /// [taskType] The task type.
  const CycleTaskState({
    this.enable,
    this.firstDateStr,
    this.intervalPeriod,
    this.param,
    this.periodUnit,
    this.source,
    this.targetEndTime,
    this.targetStartTime,
    this.taskName,
    this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'firstDateStr': ?firstDateStr,
      'intervalPeriod': ?intervalPeriod,
      'param': ?param,
      'periodUnit': ?periodUnit,
      'source': ?source,
      'targetEndTime': ?targetEndTime,
      'targetStartTime': ?targetStartTime,
      'taskName': ?taskName,
      'taskType': ?taskType,
    };
  }

  factory CycleTaskState.fromMap(Map<String, dynamic> map) {
    return CycleTaskState(
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      firstDateStr: (() { final guardedValue = map['firstDateStr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      intervalPeriod: (() { final guardedValue = map['intervalPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      param: (() { final guardedValue = map['param']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetEndTime: (() { final guardedValue = map['targetEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetStartTime: (() { final guardedValue = map['targetStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      taskName: (() { final guardedValue = map['taskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskType: (() { final guardedValue = map['taskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

