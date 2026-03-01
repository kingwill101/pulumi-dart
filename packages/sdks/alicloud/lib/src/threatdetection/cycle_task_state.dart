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
    pulumi.Output<int>? enable,
    pulumi.Output<int>? firstDateStr,
    pulumi.Output<int>? intervalPeriod,
    pulumi.Output<String>? param,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<String>? source,
    pulumi.Output<int>? targetEndTime,
    pulumi.Output<int>? targetStartTime,
    pulumi.Output<String>? taskName,
    pulumi.Output<String>? taskType,
  }) :
      enable = pulumi.Input.asOptionalInput<int>(enable),
      firstDateStr = pulumi.Input.asOptionalInput<int>(firstDateStr),
      intervalPeriod = pulumi.Input.asOptionalInput<int>(intervalPeriod),
      param = pulumi.Input.asOptionalInput<String>(param),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      source = pulumi.Input.asOptionalInput<String>(source),
      targetEndTime = pulumi.Input.asOptionalInput<int>(targetEndTime),
      targetStartTime = pulumi.Input.asOptionalInput<int>(targetStartTime),
      taskName = pulumi.Input.asOptionalInput<String>(taskName),
      taskType = pulumi.Input.asOptionalInput<String>(taskType);

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
      enable: map['enable'] == null ? null : pulumi.Output.create<int>(map['enable'] as int),
      firstDateStr: map['firstDateStr'] == null ? null : pulumi.Output.create<int>(map['firstDateStr'] as int),
      intervalPeriod: map['intervalPeriod'] == null ? null : pulumi.Output.create<int>(map['intervalPeriod'] as int),
      param: map['param'] == null ? null : pulumi.Output.create<String>(map['param'] as String),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      targetEndTime: map['targetEndTime'] == null ? null : pulumi.Output.create<int>(map['targetEndTime'] as int),
      targetStartTime: map['targetStartTime'] == null ? null : pulumi.Output.create<int>(map['targetStartTime'] as int),
      taskName: map['taskName'] == null ? null : pulumi.Output.create<String>(map['taskName'] as String),
      taskType: map['taskType'] == null ? null : pulumi.Output.create<String>(map['taskType'] as String),
    );
  }
}

