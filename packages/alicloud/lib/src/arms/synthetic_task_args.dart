// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synthetic_task_available_assertion.dart';
import 'synthetic_task_common_setting.dart';
import 'synthetic_task_custom_period.dart';
import 'synthetic_task_monitor.dart';
import 'synthetic_task_monitor_conf.dart';

/// {@template pulumi_arms_synthetic_task_synthetic_task_args_doc}
/// The set of arguments for SyntheticTask.
/// {@endtemplate}
/// {@macro pulumi_arms_synthetic_task_synthetic_task_args_doc}
class SyntheticTaskArgs {
  /// Assertion List. See `available_assertions` below.
  final pulumi.Input<List<SyntheticTaskAvailableAssertion>>? availableAssertions;
  /// Common settings. See `common_setting` below.
  final pulumi.Input<SyntheticTaskCommonSetting>? commonSetting;
  /// Custom Cycle. See `custom_period` below.
  final pulumi.Input<SyntheticTaskCustomPeriod>? customPeriod;
  /// Frequency.
  final pulumi.Input<String> frequency;
  /// Classification of selected monitors.
  final pulumi.Input<int> monitorCategory;
  /// Monitoring configuration. See `monitor_conf` below.
  final pulumi.Input<SyntheticTaskMonitorConf> monitorConf;
  /// List of selected monitors. See `monitors` below.
  final pulumi.Input<List<SyntheticTaskMonitor>> monitors;
  /// Describes which resource group the resource belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// task status.
  final pulumi.Input<String>? status;
  /// The name of synthetic task.
  final pulumi.Input<String> syntheticTaskName;
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of synthetic task.
  final pulumi.Input<int> taskType;

  /// Creates a new [SyntheticTaskArgs].
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
  SyntheticTaskArgs({
    List<SyntheticTaskAvailableAssertion>? availableAssertions,
    SyntheticTaskCommonSetting? commonSetting,
    SyntheticTaskCustomPeriod? customPeriod,
    required String frequency,
    required int monitorCategory,
    required SyntheticTaskMonitorConf monitorConf,
    required List<SyntheticTaskMonitor> monitors,
    String? resourceGroupId,
    String? status,
    required String syntheticTaskName,
    Map<String, String>? tags,
    required int taskType,
  }) :
      availableAssertions = pulumi.Input.asOptionalInput<List<SyntheticTaskAvailableAssertion>>(availableAssertions),
      commonSetting = pulumi.Input.asOptionalInput<SyntheticTaskCommonSetting>(commonSetting),
      customPeriod = pulumi.Input.asOptionalInput<SyntheticTaskCustomPeriod>(customPeriod),
      frequency = pulumi.Input.asInput<String>(frequency),
      monitorCategory = pulumi.Input.asInput<int>(monitorCategory),
      monitorConf = pulumi.Input.asInput<SyntheticTaskMonitorConf>(monitorConf),
      monitors = pulumi.Input.asInput<List<SyntheticTaskMonitor>>(monitors),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      syntheticTaskName = pulumi.Input.asInput<String>(syntheticTaskName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      taskType = pulumi.Input.asInput<int>(taskType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableAssertions': ?pulumi.Input.mapOptionalInputValue<List<SyntheticTaskAvailableAssertion>, List<Map<String, dynamic>>>(availableAssertions, (value) => pulumi.Input.encodeList<SyntheticTaskAvailableAssertion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'commonSetting': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskCommonSetting, Map<String, dynamic>>(commonSetting, (value) => value.toMap()),
      'customPeriod': ?pulumi.Input.mapOptionalInputValue<SyntheticTaskCustomPeriod, Map<String, dynamic>>(customPeriod, (value) => value.toMap()),
      'frequency': frequency,
      'monitorCategory': monitorCategory,
      'monitorConf': pulumi.Input.mapInputValue<SyntheticTaskMonitorConf, Map<String, dynamic>>(monitorConf, (value) => value.toMap()),
      'monitors': pulumi.Input.mapInputValue<List<SyntheticTaskMonitor>, List<Map<String, dynamic>>>(monitors, (value) => pulumi.Input.encodeList<SyntheticTaskMonitor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'syntheticTaskName': syntheticTaskName,
      'tags': ?tags,
      'taskType': taskType,
    };
  }

  factory SyntheticTaskArgs.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskArgs(
      availableAssertions: map['availableAssertions'] == null ? null : pulumi.Input.decodeList<SyntheticTaskAvailableAssertion>(map['availableAssertions'], (value) => SyntheticTaskAvailableAssertion.fromMap((value as Map).cast<String, dynamic>())),
      commonSetting: map['commonSetting'] == null ? null : SyntheticTaskCommonSetting.fromMap((map['commonSetting'] as Map).cast<String, dynamic>()),
      customPeriod: map['customPeriod'] == null ? null : SyntheticTaskCustomPeriod.fromMap((map['customPeriod'] as Map).cast<String, dynamic>()),
      frequency: map['frequency'] as String,
      monitorCategory: map['monitorCategory'] as int,
      monitorConf: SyntheticTaskMonitorConf.fromMap((map['monitorConf'] as Map).cast<String, dynamic>()),
      monitors: pulumi.Input.decodeList<SyntheticTaskMonitor>(map['monitors'], (value) => SyntheticTaskMonitor.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      syntheticTaskName: map['syntheticTaskName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      taskType: map['taskType'] as int,
    );
  }
}

