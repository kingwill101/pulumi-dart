// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuickConnectQuickConnectConfigQueueConfig {
  /// Identifier of the contact flow.
  final pulumi.Input<String> contactFlowId;
  /// Identifier for the queue.
  final pulumi.Input<String> queueId;

  /// Creates a new [GetQuickConnectQuickConnectConfigQueueConfig].
  /// [contactFlowId] Identifier of the contact flow.
  /// [queueId] Identifier for the queue.
  GetQuickConnectQuickConnectConfigQueueConfig({
    required this.contactFlowId,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowId': contactFlowId,
      'queueId': queueId,
    };
  }

  factory GetQuickConnectQuickConnectConfigQueueConfig.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectQuickConnectConfigQueueConfig(
      contactFlowId: (map['contactFlowId'] as String).input(),
      queueId: (map['queueId'] as String).input(),
    );
  }
}

