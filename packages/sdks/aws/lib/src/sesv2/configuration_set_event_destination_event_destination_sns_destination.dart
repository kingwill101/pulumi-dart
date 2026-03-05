// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetEventDestinationEventDestinationSnsDestination {
  /// The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email events to.
  final pulumi.Input<String> topicArn;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationSnsDestination].
  /// [topicArn] The Amazon Resource Name (ARN) of the Amazon SNS topic to publish email events to.
  ConfigurationSetEventDestinationEventDestinationSnsDestination({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': topicArn,
    };
  }

  factory ConfigurationSetEventDestinationEventDestinationSnsDestination.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationSnsDestination(
      topicArn: pulumi.Input.fromValue(map['topicArn'] as String),
    );
  }
}

