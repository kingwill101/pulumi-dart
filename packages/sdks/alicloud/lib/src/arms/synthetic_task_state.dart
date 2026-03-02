// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_available_assertion.dart';
import 'synthetic_task_common_setting.dart';
import 'synthetic_task_custom_period.dart';
import 'synthetic_task_monitor.dart';
import 'synthetic_task_monitor_conf.dart';

/// Input properties used for looking up and filtering SyntheticTask resources.
class SyntheticTaskState {
  /// Assertion List. See `available_assertions` below.
  final pulumi.Input<List<SyntheticTaskAvailableAssertion>>? availableAssertions;
  /// Common settings. See `common_setting` below.
  final pulumi.Input<SyntheticTaskCommonSetting>? commonSetting;
  /// Custom Cycle. See `custom_period` below.
  final pulumi.Input<SyntheticTaskCustomPeriod>? customPeriod;
  /// Frequency.
  final pulumi.Input<String>? frequency;
  /// Classification of selected monitors.
  final pulumi.Input<int>? monitorCategory;
  /// Monitoring configuration. See `monitor_conf` below.
  final pulumi.Input<SyntheticTaskMonitorConf>? monitorConf;
  /// List of selected monitors. See `monitors` below.
  final pulumi.Input<List<SyntheticTaskMonitor>>? monitors;
  /// Describes which resource group the resource belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// task status.
  final pulumi.Input<String>? status;
  /// The name of synthetic task.
  final pulumi.Input<String>? syntheticTaskName;
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of synthetic task.
  final pulumi.Input<int>? taskType;

  /// Creates a new [SyntheticTaskState].
  /// [availableAssertions] Assertion List. See `available_assertions` below.
  /// [commonSetting] Common settings. See `common_setting` below.
  /// [customPeriod] Custom Cycle. See `custom_period` below.
  /// [frequency] Frequency.
  /// [monitorCategory] Classification of selected monitors.
  /// [monitorConf] Monitoring configuration. See `monitor_conf` below.
  /// [monitors] List of selected monitors. See `monitors` below.
  /// [resourceGroupId] Describes which resource group the resource belongs.
  /// [status] task status.
  /// [syntheticTaskName] The name of synthetic task.
  /// [tags] The list of tags.
  /// [taskType] The type of synthetic task.
  SyntheticTaskState({
    this.availableAssertions,
    this.commonSetting,
    this.customPeriod,
    this.frequency,
    this.monitorCategory,
    this.monitorConf,
    this.monitors,
    this.resourceGroupId,
    this.status,
    this.syntheticTaskName,
    this.tags,
    this.taskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableAssertions': ?pulumi.Input.mapOptionalInputValue<List<SyntheticTaskAvailableAssertion>, List<Map<String, dynamic>>>(availableAssertions, (value) => pulumi.Input.encodeList<SyntheticTaskAvailableAssertion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commonSetting': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskCommonSetting, Map<String, dynamic>>(commonSetting, (value) => value.toMap()),
      'customPeriod': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskCustomPeriod, Map<String, dynamic>>(customPeriod, (value) => value.toMap()),
      'frequency': ?frequency,
      'monitorCategory': ?monitorCategory,
      'monitorConf': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskMonitorConf, Map<String, dynamic>>(monitorConf, (value) => value.toMap()),
      'monitors': ?pulumi.Input.mapOptionalInputValue<List<SyntheticTaskMonitor>, List<Map<String, dynamic>>>(monitors, (value) => pulumi.Input.encodeList<SyntheticTaskMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'syntheticTaskName': ?syntheticTaskName,
      'tags': ?tags,
      'taskType': ?taskType,
    };
  }

  factory SyntheticTaskState.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskState(
      availableAssertions: map['availableAssertions'] == null ? null : (pulumi.Input.decodeList<SyntheticTaskAvailableAssertion>(map['availableAssertions'], (value) => SyntheticTaskAvailableAssertion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      commonSetting: map['commonSetting'] == null ? null : (SyntheticTaskCommonSetting.fromMap((map['commonSetting'] as Map).cast<String, dynamic>())).input(),
      customPeriod: map['customPeriod'] == null ? null : (SyntheticTaskCustomPeriod.fromMap((map['customPeriod'] as Map).cast<String, dynamic>())).input(),
      frequency: map['frequency'] == null ? null : (map['frequency'] as String).input(),
      monitorCategory: map['monitorCategory'] == null ? null : (map['monitorCategory'] as int).input(),
      monitorConf: map['monitorConf'] == null ? null : (SyntheticTaskMonitorConf.fromMap((map['monitorConf'] as Map).cast<String, dynamic>())).input(),
      monitors: map['monitors'] == null ? null : (pulumi.Input.decodeList<SyntheticTaskMonitor>(map['monitors'], (value) => SyntheticTaskMonitor.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      syntheticTaskName: map['syntheticTaskName'] == null ? null : (map['syntheticTaskName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      taskType: map['taskType'] == null ? null : (map['taskType'] as int).input(),
    );
  }
}

