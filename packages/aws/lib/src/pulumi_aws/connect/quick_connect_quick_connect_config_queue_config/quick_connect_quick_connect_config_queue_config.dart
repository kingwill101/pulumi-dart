// ignore_for_file: unused_element, unnecessary_cast

class QuickConnectQuickConnectConfigQueueConfig {
  /// Specifies the identifier of the contact flow.
  final String contactFlowId;

  /// Specifies the identifier for the queue.
  final String queueId;

  QuickConnectQuickConnectConfigQueueConfig({
    required this.contactFlowId,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactFlowId'] = contactFlowId;
    map['queueId'] = queueId;
    return map;
  }

  factory QuickConnectQuickConnectConfigQueueConfig.fromMap(
      Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfigQueueConfig(
      contactFlowId: map['contactFlowId'] as String,
      queueId: map['queueId'] as String,
    );
  }
}
