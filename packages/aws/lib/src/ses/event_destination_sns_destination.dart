// ignore_for_file: unused_element, unnecessary_cast

class EventDestinationSnsDestination {
  /// The ARN of the SNS topic
  final String topicArn;

  /// Creates a new [EventDestinationSnsDestination].
  /// [topicArn] The ARN of the SNS topic
  EventDestinationSnsDestination({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topicArn'] = topicArn;
    return map;
  }

  factory EventDestinationSnsDestination.fromMap(Map<String, dynamic> map) {
    return EventDestinationSnsDestination(
      topicArn: map['topicArn'] as String,
    );
  }
}
