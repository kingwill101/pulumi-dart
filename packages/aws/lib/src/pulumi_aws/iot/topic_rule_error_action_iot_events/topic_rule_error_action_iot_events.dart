// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleErrorActionIotEvents {
  /// The payload that contains a JSON array of records will be sent to IoT Events via a batch call.
  final bool? batchMode;

  /// The name of the AWS IoT Events input.
  final String inputName;

  /// Use this to ensure that only one input (message) with a given messageId is processed by an AWS IoT Events detector.
  final String? messageId;

  /// The ARN of the IAM role that grants access.
  final String roleArn;

  TopicRuleErrorActionIotEvents({
    this.batchMode,
    required this.inputName,
    this.messageId,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final batchModeValue = batchMode;
    if (batchModeValue != null) {
      map['batchMode'] = batchModeValue;
    }
    map['inputName'] = inputName;
    final messageIdValue = messageId;
    if (messageIdValue != null) {
      map['messageId'] = messageIdValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory TopicRuleErrorActionIotEvents.fromMap(Map<String, dynamic> map) {
    return TopicRuleErrorActionIotEvents(
      batchMode: map['batchMode'] == null ? null : map['batchMode'] as bool,
      inputName: map['inputName'] as String,
      messageId: map['messageId'] == null ? null : map['messageId'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
