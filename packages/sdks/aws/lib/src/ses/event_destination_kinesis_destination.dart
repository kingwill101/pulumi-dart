// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventDestinationKinesisDestination {
  /// ARN of the role that has permissions to access the Kinesis Stream
  final pulumi.Input<String> roleArn;
  /// ARN of the Kinesis Stream
  final pulumi.Input<String> streamArn;

  /// Creates a new [EventDestinationKinesisDestination].
  /// [roleArn] ARN of the role that has permissions to access the Kinesis Stream
  /// [streamArn] ARN of the Kinesis Stream
  const EventDestinationKinesisDestination({
    required this.roleArn,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'streamArn': streamArn,
    };
  }

  factory EventDestinationKinesisDestination.fromMap(Map<String, dynamic> map) {
    return EventDestinationKinesisDestination(
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
    );
  }
}
