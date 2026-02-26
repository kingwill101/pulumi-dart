// ignore_for_file: unused_element, unnecessary_cast

class NotificationRuleTarget {
  /// The ARN of the Amazon Q Developer in chat applications topic or Amazon Q Developer in chat applications client.
  final String address;

  /// The status of the notification rule. Possible values are `ENABLED` and `DISABLED`, default is `ENABLED`.
  final String? status;

  /// The type of the notification target. Valid values are `SNS`, `AWSChatbotSlack`, and `AWSChatbotMicrosoftTeams`. Default value is `SNS`.
  final String? type;

  NotificationRuleTarget({
    required this.address,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory NotificationRuleTarget.fromMap(Map<String, dynamic> map) {
    return NotificationRuleTarget(
      address: map['address'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
