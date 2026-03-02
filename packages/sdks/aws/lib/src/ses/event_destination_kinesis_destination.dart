// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventDestinationKinesisDestination {
  /// The ARN of the role that has permissions to access the Kinesis Stream
  final pulumi.Input<String> roleArn;
  /// The ARN of the Kinesis Stream
  final pulumi.Input<String> streamArn;

  /// Creates a new [EventDestinationKinesisDestination].
  /// [roleArn] The ARN of the role that has permissions to access the Kinesis Stream
  /// [streamArn] The ARN of the Kinesis Stream
  EventDestinationKinesisDestination({
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
      roleArn: (map['roleArn'] as String).input(),
      streamArn: (map['streamArn'] as String).input(),
    );
  }
}

