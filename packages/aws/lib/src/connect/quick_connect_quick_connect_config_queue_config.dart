// ignore_for_file: unused_element, unnecessary_cast

class QuickConnectQuickConnectConfigQueueConfig {
  /// Specifies the identifier of the contact flow.
  final String contactFlowId;

  /// Specifies the identifier for the queue.
  final String queueId;

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

  factory QuickConnectQuickConnectConfigQueueConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return QuickConnectQuickConnectConfigQueueConfig(
      contactFlowId: map['contactFlowId'] as String,
      queueId: map['queueId'] as String,
    );
  }
}
