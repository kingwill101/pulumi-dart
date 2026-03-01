// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HybridMonitorFcTask resources.
class HybridMonitorFcTaskState {
  /// The ID of the monitoring task.
  final pulumi.Input<String>? hybridMonitorFcTaskId;
  /// The index warehouse where the host belongs.
  final pulumi.Input<String>? namespace;
  /// The ID of the member account. If you call API operations by using a management account, you can connect the Alibaba Cloud services that are activated for a member account in Resource Directory to Hybrid Cloud Monitoring. You can use Resource Directory to monitor Alibaba Cloud services across enterprise accounts.
  final pulumi.Input<String>? targetUserId;
  /// The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  final pulumi.Input<String>? yarmConfig;

  /// Creates a new [HybridMonitorFcTaskState].
  /// [hybridMonitorFcTaskId] The ID of the monitoring task.
  /// [namespace] The index warehouse where the host belongs.
  /// [targetUserId] The ID of the member account. If you call API operations by using a management account, you can connect the Alibaba Cloud services that are activated for a member account in Resource Directory to Hybrid Cloud Monitoring. You can use Resource Directory to monitor Alibaba Cloud services across enterprise accounts.
  /// [yarmConfig] The configuration file of the Alibaba Cloud service that you want to monitor by using Hybrid Cloud Monitoring.
  HybridMonitorFcTaskState({
    pulumi.Output<String>? hybridMonitorFcTaskId,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? targetUserId,
    pulumi.Output<String>? yarmConfig,
  }) :
      hybridMonitorFcTaskId = pulumi.Input.asOptionalInput<String>(hybridMonitorFcTaskId),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      targetUserId = pulumi.Input.asOptionalInput<String>(targetUserId),
      yarmConfig = pulumi.Input.asOptionalInput<String>(yarmConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridMonitorFcTaskId': ?hybridMonitorFcTaskId,
      'namespace': ?namespace,
      'targetUserId': ?targetUserId,
      'yarmConfig': ?yarmConfig,
    };
  }

  factory HybridMonitorFcTaskState.fromMap(Map<String, dynamic> map) {
    return HybridMonitorFcTaskState(
      hybridMonitorFcTaskId: map['hybridMonitorFcTaskId'] == null ? null : pulumi.Output.create<String>(map['hybridMonitorFcTaskId'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      targetUserId: map['targetUserId'] == null ? null : pulumi.Output.create<String>(map['targetUserId'] as String),
      yarmConfig: map['yarmConfig'] == null ? null : pulumi.Output.create<String>(map['yarmConfig'] as String),
    );
  }
}

