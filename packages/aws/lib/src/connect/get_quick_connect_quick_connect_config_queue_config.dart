// ignore_for_file: unused_element, unnecessary_cast

class GetQuickConnectQuickConnectConfigQueueConfig {
  /// Identifier of the contact flow.
  final String contactFlowId;

  /// Identifier for the queue.
  final String queueId;

  /// Creates a new [GetQuickConnectQuickConnectConfigQueueConfig].
  /// [contactFlowId] Identifier of the contact flow.
  /// [queueId] Identifier for the queue.
  GetQuickConnectQuickConnectConfigQueueConfig({
    required this.contactFlowId,
    required this.queueId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactFlowId'] = contactFlowId;
    map['queueId'] = queueId;
    return map;
  }

  factory GetQuickConnectQuickConnectConfigQueueConfig.fromMap(
      Map<String, dynamic> map) {
    return GetQuickConnectQuickConnectConfigQueueConfig(
      contactFlowId: map['contactFlowId'] as String,
      queueId: map['queueId'] as String,
    );
  }
}
