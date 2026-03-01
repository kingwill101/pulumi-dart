// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hybrid_monitor_sls_task_attach_label.dart';
import 'hybrid_monitor_sls_task_sls_process_config.dart';

/// {@template pulumi_cms_hybrid_monitor_sls_task_hybrid_monitor_sls_task_args_doc}
/// The set of arguments for HybridMonitorSlsTask.
/// {@endtemplate}
/// {@macro pulumi_cms_hybrid_monitor_sls_task_hybrid_monitor_sls_task_args_doc}
class HybridMonitorSlsTaskArgs {
  /// The label of the monitoring task. See `attach_labels` below.
  final pulumi.Input<List<HybridMonitorSlsTaskAttachLabel>>? attachLabels;
  /// The interval at which metrics are collected. Valid values: `15`, `60`(default value). Unit: seconds.
  final pulumi.Input<int>? collectInterval;
  /// The type of the collection target, enter the name of the Logstore group.
  final pulumi.Input<String> collectTargetType;
  /// The description of the metric import task.
  final pulumi.Input<String>? description;
  /// The name of the namespace.
  final pulumi.Input<String> namespace;
  /// The configurations of the logs that are imported from Log Service. See `sls_process_config` below.
  final pulumi.Input<HybridMonitorSlsTaskSlsProcessConfig> slsProcessConfig;
  /// The name of the metric import task, enter the name of the metric for logs imported from Log Service.
  final pulumi.Input<String> taskName;

  /// Creates a new [HybridMonitorSlsTaskArgs].
  /// [attachLabels] The label of the monitoring task. See `attach_labels` below.
  /// [collectInterval] The interval at which metrics are collected. Valid values: `15`, `60`(default value). Unit: seconds.
  /// [collectTargetType] The type of the collection target, enter the name of the Logstore group.
  /// [description] The description of the metric import task.
  /// [namespace] The name of the namespace.
  /// [slsProcessConfig] The configurations of the logs that are imported from Log Service. See `sls_process_config` below.
  /// [taskName] The name of the metric import task, enter the name of the metric for logs imported from Log Service.
  HybridMonitorSlsTaskArgs({
    pulumi.Output<List<HybridMonitorSlsTaskAttachLabel>>? attachLabels,
    pulumi.Output<int>? collectInterval,
    required pulumi.Output<String> collectTargetType,
    pulumi.Output<String>? description,
    required pulumi.Output<String> namespace,
    required pulumi.Output<HybridMonitorSlsTaskSlsProcessConfig> slsProcessConfig,
    required pulumi.Output<String> taskName,
  }) :
      attachLabels = pulumi.Input.asOptionalInput<List<HybridMonitorSlsTaskAttachLabel>>(attachLabels),
      collectInterval = pulumi.Input.asOptionalInput<int>(collectInterval),
      collectTargetType = pulumi.Input.asInput<String>(collectTargetType),
      description = pulumi.Input.asOptionalInput<String>(description),
      namespace = pulumi.Input.asInput<String>(namespace),
      slsProcessConfig = pulumi.Input.asInput<HybridMonitorSlsTaskSlsProcessConfig>(slsProcessConfig),
      taskName = pulumi.Input.asInput<String>(taskName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachLabels': ?pulumi.Input.mapOptionalInputValue<List<HybridMonitorSlsTaskAttachLabel>, List<Map<String, dynamic>>>(attachLabels, (value) => pulumi.Input.encodeList<HybridMonitorSlsTaskAttachLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'collectInterval': ?collectInterval,
      'collectTargetType': collectTargetType,
      'description': ?description,
      'namespace': namespace,
      'slsProcessConfig': pulumi.Input.mapInputValue<HybridMonitorSlsTaskSlsProcessConfig, Map<String, dynamic>>(slsProcessConfig, (value) => value.toMap()),
      'taskName': taskName,
    };
  }

  factory HybridMonitorSlsTaskArgs.fromMap(Map<String, dynamic> map) {
    return HybridMonitorSlsTaskArgs(
      attachLabels: map['attachLabels'] == null ? null : pulumi.Output.create<List<HybridMonitorSlsTaskAttachLabel>>(pulumi.Input.decodeList<HybridMonitorSlsTaskAttachLabel>(map['attachLabels'], (value) => HybridMonitorSlsTaskAttachLabel.fromMap((value as Map).cast<String, dynamic>()))),
      collectInterval: map['collectInterval'] == null ? null : pulumi.Output.create<int>(map['collectInterval'] as int),
      collectTargetType: pulumi.Output.create<String>(map['collectTargetType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      slsProcessConfig: pulumi.Output.create<HybridMonitorSlsTaskSlsProcessConfig>(HybridMonitorSlsTaskSlsProcessConfig.fromMap((map['slsProcessConfig'] as Map).cast<String, dynamic>())),
      taskName: pulumi.Output.create<String>(map['taskName'] as String),
    );
  }
}

