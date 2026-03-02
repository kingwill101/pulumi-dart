// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetQuickConnectQuickConnectConfigUserConfig {
  /// Identifier of the contact flow.
  final pulumi.Input<String> contactFlowId;
  /// Identifier for the user.
  final pulumi.Input<String> userId;

  /// Creates a new [GetQuickConnectQuickConnectConfigUserConfig].
  /// [contactFlowId] Identifier of the contact flow.
  /// [userId] Identifier for the user.
  GetQuickConnectQuickConnectConfigUserConfig({
    required this.contactFlowId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowId': contactFlowId,
      'userId': userId,
    };
  }

  factory GetQuickConnectQuickConnectConfigUserConfig.fromMap(Map<String, dynamic> map) {
    return GetQuickConnectQuickConnectConfigUserConfig(
      contactFlowId: (map['contactFlowId'] as String).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

