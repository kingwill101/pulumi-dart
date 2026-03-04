// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_cycle_task_cycle_task_args_doc}
/// The set of arguments for CycleTask.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_cycle_task_cycle_task_args_doc}
class CycleTaskArgs {
  /// Whether to enable. Value:
  final pulumi.Input<int> enable;

  /// First execution time.
  final pulumi.Input<int> firstDateStr;

  /// Interval period.
  final pulumi.Input<int> intervalPeriod;

  /// Extended information field.
  final pulumi.Input<String>? param;

  /// Unit of scan cycle, value:
  final pulumi.Input<String> periodUnit;

  /// Added the source of the task.
  final pulumi.Input<String>? source;

  /// Task end time (hours).
  final pulumi.Input<int> targetEndTime;

  /// Task start time (hours).
  final pulumi.Input<int> targetStartTime;

  /// The task name.
  /// - **VIRUS_VUL_SCHEDULE_SCAN**: scans for viruses.
  /// - **IMAGE_SCAN**: Image scan.
  /// - **EMG_VUL_SCHEDULE_SCAN**: Emergency vulnerability scanning.
  final pulumi.Input<String> taskName;

  /// The task type.
  /// - **VIRUS_VUL_SCHEDULE_SCAN**: scans for viruses.
  /// - **IMAGE_SCAN**: Image scan.
  /// - **EMG_VUL_SCHEDULE_SCAN**: Emergency vulnerability scanning.
  final pulumi.Input<String> taskType;

  /// Creates a new [CycleTaskArgs].
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
  CycleTaskArgs({
    required this.enable,
    required this.firstDateStr,
    required this.intervalPeriod,
    this.param,
    required this.periodUnit,
    this.source,
    required this.targetEndTime,
    required this.targetStartTime,
    required this.taskName,
    required this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
      'firstDateStr': firstDateStr,
      'intervalPeriod': intervalPeriod,
      'param': ?param,
      'periodUnit': periodUnit,
      'source': ?source,
      'targetEndTime': targetEndTime,
      'targetStartTime': targetStartTime,
      'taskName': taskName,
      'taskType': taskType,
    };
  }

  factory CycleTaskArgs.fromMap(Map<String, dynamic> map) {
    return CycleTaskArgs(
      enable: pulumi.Input.fromValue(map['enable'] as int),
      firstDateStr: pulumi.Input.fromValue(map['firstDateStr'] as int),
      intervalPeriod: pulumi.Input.fromValue(map['intervalPeriod'] as int),
      param: (() {
        final guardedValue = map['param'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      periodUnit: pulumi.Input.fromValue(map['periodUnit'] as String),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetEndTime: pulumi.Input.fromValue(map['targetEndTime'] as int),
      targetStartTime: pulumi.Input.fromValue(map['targetStartTime'] as int),
      taskName: pulumi.Input.fromValue(map['taskName'] as String),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
    );
  }
}
