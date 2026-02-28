// ignore_for_file: unused_element, unnecessary_cast


class NotificationRuleTarget {
  /// The ARN of the Amazon Q Developer in chat applications topic or Amazon Q Developer in chat applications client.
  final String address;
  /// The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  final String? status;
  /// The type of the notification target. Valid values are `SNS`, `AWSChatbotSlack`, and `AWSChatbotMicrosoftTeams`. Default value is `SNS`.
  final String? type;

  /// Creates a new [NotificationRuleTarget].
  /// [address] The ARN of the Amazon Q Developer in chat applications topic or Amazon Q Developer in chat applications client.
  /// [status] The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  /// [type] The type of the notification target. Valid values are `SNS`, `AWSChatbotSlack`, and `AWSChatbotMicrosoftTeams`. Default value is `SNS`.
  NotificationRuleTarget({
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
      address: map['address'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

