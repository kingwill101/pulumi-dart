// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_hybrid_monitor_fc_task_hybrid_monitor_fc_task_args_doc}
/// The set of arguments for HybridMonitorFcTask.
/// {@endtemplate}
/// {@macro pulumi_cms_hybrid_monitor_fc_task_hybrid_monitor_fc_task_args_doc}
class HybridMonitorFcTaskArgs {
  /// The index warehouse where the host belongs.
  final pulumi.Input<String> namespace;
  /// The ID of the member account. If you call API operations by using a management account, you can connect the Alibaba Cloud services that are activated for a member account in Resource Directory to Hybrid Cloud Monitoring. You can use Resource Directory to monitor Alibaba Cloud services across enterprise accounts.
  final pulumi.Input<String>? targetUserId;
  /// The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  final pulumi.Input<String> yarmConfig;

  /// Creates a new [HybridMonitorFcTaskArgs].
  /// [namespace] The index warehouse where the host belongs.
  /// [targetUserId] The ID of the member account. If you call API operations by using a management account, you can connect the Alibaba Cloud services that are activated for a member account in Resource Directory to Hybrid Cloud Monitoring. You can use Resource Directory to monitor Alibaba Cloud services across enterprise accounts.
  /// [yarmConfig] The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  HybridMonitorFcTaskArgs({
    required pulumi.Output<String> namespace,
    pulumi.Output<String>? targetUserId,
    required pulumi.Output<String> yarmConfig,
  }) :
      namespace = pulumi.Input.asInput<String>(namespace),
      targetUserId = pulumi.Input.asOptionalInput<String>(targetUserId),
      yarmConfig = pulumi.Input.asInput<String>(yarmConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
      'targetUserId': ?targetUserId,
      'yarmConfig': yarmConfig,
    };
  }

  factory HybridMonitorFcTaskArgs.fromMap(Map<String, dynamic> map) {
    return HybridMonitorFcTaskArgs(
      namespace: pulumi.Output.create<String>(map['namespace'] as String),
      targetUserId: map['targetUserId'] == null ? null : pulumi.Output.create<String>(map['targetUserId'] as String),
      yarmConfig: pulumi.Output.create<String>(map['yarmConfig'] as String),
    );
  }
}

