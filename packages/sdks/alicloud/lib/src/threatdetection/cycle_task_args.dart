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
    required pulumi.Output<int> enable,
    required pulumi.Output<int> firstDateStr,
    required pulumi.Output<int> intervalPeriod,
    pulumi.Output<String>? param,
    required pulumi.Output<String> periodUnit,
    pulumi.Output<String>? source,
    required pulumi.Output<int> targetEndTime,
    required pulumi.Output<int> targetStartTime,
    required pulumi.Output<String> taskName,
    required pulumi.Output<String> taskType,
  }) :
      enable = pulumi.Input.asInput<int>(enable),
      firstDateStr = pulumi.Input.asInput<int>(firstDateStr),
      intervalPeriod = pulumi.Input.asInput<int>(intervalPeriod),
      param = pulumi.Input.asOptionalInput<String>(param),
      periodUnit = pulumi.Input.asInput<String>(periodUnit),
      source = pulumi.Input.asOptionalInput<String>(source),
      targetEndTime = pulumi.Input.asInput<int>(targetEndTime),
      targetStartTime = pulumi.Input.asInput<int>(targetStartTime),
      taskName = pulumi.Input.asInput<String>(taskName),
      taskType = pulumi.Input.asInput<String>(taskType);

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
      enable: pulumi.Output.create<int>(map['enable'] as int),
      firstDateStr: pulumi.Output.create<int>(map['firstDateStr'] as int),
      intervalPeriod: pulumi.Output.create<int>(map['intervalPeriod'] as int),
      param: map['param'] == null ? null : pulumi.Output.create<String>(map['param'] as String),
      periodUnit: pulumi.Output.create<String>(map['periodUnit'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      targetEndTime: pulumi.Output.create<int>(map['targetEndTime'] as int),
      targetStartTime: pulumi.Output.create<int>(map['targetStartTime'] as int),
      taskName: pulumi.Output.create<String>(map['taskName'] as String),
      taskType: pulumi.Output.create<String>(map['taskType'] as String),
    );
  }
}

