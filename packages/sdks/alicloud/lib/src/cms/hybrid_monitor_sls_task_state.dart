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
      'attachLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<HybridMonitorSlsTaskAttachLabel>,
            List<Map<String, dynamic>>
          >(
            attachLabels,
            (value) =>
                pulumi.Input.encodeList<
                  HybridMonitorSlsTaskAttachLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'collectInterval': ?collectInterval,
      'collectTargetType': ?collectTargetType,
      'description': ?description,
      'namespace': ?namespace,
      'slsProcessConfig':
          ?pulumi.Input.mapOptionalInputValue<
            HybridMonitorSlsTaskSlsProcessConfig,
            Map<String, dynamic>
          >(slsProcessConfig, (value) => value.toMap()),
      'taskName': ?taskName,
    };
  }

  factory HybridMonitorSlsTaskState.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskState(
      attachLabels: (() {
        final guardedValue = map['attachLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HybridMonitorSlsTaskAttachLabel>(
            guardedValue,
            (value) => HybridMonitorSlsTaskAttachLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      collectInterval: (() {
        final guardedValue = map['collectInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      collectTargetType: (() {
        final guardedValue = map['collectTargetType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slsProcessConfig: (() {
        final guardedValue = map['slsProcessConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HybridMonitorSlsTaskSlsProcessConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      taskName: (() {
        final guardedValue = map['taskName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
