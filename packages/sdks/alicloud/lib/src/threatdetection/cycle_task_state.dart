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
  CycleTaskState({
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
      enable: map['enable'] == null ? null : (map['enable'] as int).input(),
      firstDateStr: map['firstDateStr'] == null ? null : (map['firstDateStr'] as int).input(),
      intervalPeriod: map['intervalPeriod'] == null ? null : (map['intervalPeriod'] as int).input(),
      param: map['param'] == null ? null : (map['param'] as String).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      targetEndTime: map['targetEndTime'] == null ? null : (map['targetEndTime'] as int).input(),
      targetStartTime: map['targetStartTime'] == null ? null : (map['targetStartTime'] as int).input(),
      taskName: map['taskName'] == null ? null : (map['taskName'] as String).input(),
      taskType: map['taskType'] == null ? null : (map['taskType'] as String).input(),
    );
  }
}

