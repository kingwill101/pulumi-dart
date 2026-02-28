// ignore_for_file: unused_element, unnecessary_cast

class QuickConnectQuickConnectConfigUserConfig {
  /// Specifies the identifier of the contact flow.
  final String contactFlowId;

  /// Specifies the identifier for the user.
  final String userId;

  /// Creates a new [QuickConnectQuickConnectConfigUserConfig].
  /// [contactFlowId] Specifies the identifier of the contact flow.
  /// [userId] Specifies the identifier for the user.
  QuickConnectQuickConnectConfigUserConfig({
    required this.contactFlowId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactFlowId'] = contactFlowId;
    map['userId'] = userId;
    return map;
  }

  factory QuickConnectQuickConnectConfigUserConfig.fromMap(
      Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfigUserConfig(
      contactFlowId: map['contactFlowId'] as String,
      userId: map['userId'] as String,
    );
  }
}
