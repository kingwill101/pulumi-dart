// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_monitor_sls_task_attach_label.dart';
import 'hybrid_monitor_sls_task_sls_process_config.dart';

/// Input properties used for looking up and filtering HybridMonitorSlsTask resources.
class HybridMonitorSlsTaskState {
  /// The label of the monitoring task. See `attach_labels` below.
  final pulumi.Input<List<HybridMonitorSlsTaskAttachLabel>>? attachLabels;
  /// The interval at which metrics are collected. Valid values: `15`, `60`(default value). Unit: seconds.
  final pulumi.Input<int>? collectInterval;
  /// The type of the collection target, enter the name of the Logstore group.
  final pulumi.Input<String>? collectTargetType;
  /// The description of the metric import task.
  final pulumi.Input<String>? description;
  /// The name of the namespace.
  final pulumi.Input<String>? namespace;
  /// The configurations of the logs that are imported from Log Service. See `sls_process_config` below.
  final pulumi.Input<HybridMonitorSlsTaskSlsProcessConfig>? slsProcessConfig;
  /// The name of the metric import task, enter the name of the metric for logs imported from Log Service.
  final pulumi.Input<String>? taskName;

  /// Creates a new [HybridMonitorSlsTaskState].
  /// [attachLabels] The label of the monitoring task. See `attach_labels` below.
  /// [collectInterval] The interval at which metrics are collected. Valid values: `15`, `60`(default value). Unit: seconds.
  /// [collectTargetType] The type of the collection target, enter the name of the Logstore group.
  /// [description] The description of the metric import task.
  /// [namespace] The name of the namespace.
  /// [slsProcessConfig] The configurations of the logs that are imported from Log Service. See `sls_process_config` below.
  /// [taskName] The name of the metric import task, enter the name of the metric for logs imported from Log Service.
  HybridMonitorSlsTaskState({
    this.attachLabels,
    this.collectInterval,
    this.collectTargetType,
    this.description,
    this.namespace,
    this.slsProcessConfig,
    this.taskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachLabels': ?pulumi.Input.mapOptionalInputValue<List<HybridMonitorSlsTaskAttachLabel>, List<Map<String, dynamic>>>(attachLabels, (value) => pulumi.Input.encodeList<HybridMonitorSlsTaskAttachLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'collectInterval': ?collectInterval,
      'collectTargetType': ?collectTargetType,
      'description': ?description,
      'namespace': ?namespace,
      'slsProcessConfig': ?pulumi.Input.mapOptionalInputValue<HybridMonitorSlsTaskSlsProcessConfig, Map<String, dynamic>>(slsProcessConfig, (value) => value.toMap()),
      'taskName': ?taskName,
    };
  }

  factory HybridMonitorSlsTaskState.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskState(
      attachLabels: map['attachLabels'] == null ? null : (pulumi.Input.decodeList<HybridMonitorSlsTaskAttachLabel>(map['attachLabels']!, (value) => HybridMonitorSlsTaskAttachLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      collectInterval: map['collectInterval'] == null ? null : (map['collectInterval']! as int).input(),
      collectTargetType: map['collectTargetType'] == null ? null : (map['collectTargetType']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      slsProcessConfig: map['slsProcessConfig'] == null ? null : (HybridMonitorSlsTaskSlsProcessConfig.fromMap((map['slsProcessConfig']! as Map).cast<String, dynamic>())).input(),
      taskName: map['taskName'] == null ? null : (map['taskName']! as String).input(),
    );
  }
}

