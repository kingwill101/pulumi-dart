// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetEventDestinationEventDestinationSnsDestination {
  /// The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email events to.
  final String topicArn;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationSnsDestination].
  /// [topicArn] The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email events to.
  ConfigurationSetEventDestinationEventDestinationSnsDestination({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topicArn'] = topicArn;
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestinationSnsDestination.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationSnsDestination(
      topicArn: map['topicArn'] as String,
    );
  }
}
