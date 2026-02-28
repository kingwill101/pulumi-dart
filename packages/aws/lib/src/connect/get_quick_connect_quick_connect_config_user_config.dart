// ignore_for_file: unused_element, unnecessary_cast

class GetQuickConnectQuickConnectConfigUserConfig {
  /// Identifier of the contact flow.
  final String contactFlowId;

  /// Identifier for the user.
  final String userId;

  /// Creates a new [GetQuickConnectQuickConnectConfigUserConfig].
  /// [contactFlowId] Identifier of the contact flow.
  /// [userId] Identifier for the user.
  GetQuickConnectQuickConnectConfigUserConfig({
    required this.contactFlowId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactFlowId'] = contactFlowId;
    map['userId'] = userId;
    return map;
  }

  factory GetQuickConnectQuickConnectConfigUserConfig.fromMap(
      Map<String, dynamic> map) {
    return GetQuickConnectQuickConnectConfigUserConfig(
      contactFlowId: map['contactFlowId'] as String,
      userId: map['userId'] as String,
    );
  }
}
