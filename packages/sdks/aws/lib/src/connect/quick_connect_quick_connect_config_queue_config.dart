// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuickConnectQuickConnectConfigQueueConfig {
  /// Specifies the identifier of the contact flow.
  final pulumi.Input<String> contactFlowId;
  /// Specifies the identifier for the queue.
  final pulumi.Input<String> queueId;

  /// Creates a new [QuickConnectQuickConnectConfigQueueConfig].
  /// [contactFlowId] Specifies the identifier of the contact flow.
  /// [queueId] Specifies the identifier for the queue.
  QuickConnectQuickConnectConfigQueueConfig({
    required this.contactFlowId,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowId': contactFlowId,
      'queueId': queueId,
    };
  }

  factory QuickConnectQuickConnectConfigQueueConfig.fromMap(Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfigQueueConfig(
      contactFlowId: pulumi.Input.fromValue(map['contactFlowId'] as String),
      queueId: pulumi.Input.fromValue(map['queueId'] as String),
    );
  }
}

