// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationRuleTarget {
  /// The ARN of the Amazon Q Developer in chat applications topic or Amazon Q Developer in chat applications client.
  final pulumi.Input<String> address;
  /// The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  final pulumi.Input<String>? status;
  /// The type of the notification target. Valid values are `SNS`, `AWSChatbotSlack`, and `AWSChatbotMicrosoftTeams`. Default value is `SNS`.
  final pulumi.Input<String>? type;

  /// Creates a new [NotificationRuleTarget].
  /// [address] The ARN of the Amazon Q Developer in chat applications topic or Amazon Q Developer in chat applications client.
  /// [status] The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  /// [type] The type of the notification target. Valid values are `SNS`, `AWSChatbotSlack`, and `AWSChatbotMicrosoftTeams`. Default value is `SNS`.
  const NotificationRuleTarget({
    required this.address,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'status': ?status,
      'type': ?type,
    };
  }

  factory NotificationRuleTarget.fromMap(Map<String, dynamic> map) {
    return NotificationRuleTarget(
      address: pulumi.Input.fromValue(map['address'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
