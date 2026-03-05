// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QuickConnectQuickConnectConfigUserConfig {
  /// Specifies the identifier of the contact flow.
  final pulumi.Input<String> contactFlowId;
  /// Specifies the identifier for the user.
  final pulumi.Input<String> userId;

  /// Creates a new [QuickConnectQuickConnectConfigUserConfig].
  /// [contactFlowId] Specifies the identifier of the contact flow.
  /// [userId] Specifies the identifier for the user.
  QuickConnectQuickConnectConfigUserConfig({
    required this.contactFlowId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactFlowId': contactFlowId,
      'userId': userId,
    };
  }

  factory QuickConnectQuickConnectConfigUserConfig.fromMap(Map<String, dynamic> map) {
    return QuickConnectQuickConnectConfigUserConfig(
      contactFlowId: pulumi.Input.fromValue(map['contactFlowId'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}

