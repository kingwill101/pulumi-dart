// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EventStream.
class EventStreamArgs {
  /// The application ID.
  final Input<String> applicationId;

  /// The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  final Input<String> destinationStreamArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  final Input<String> roleArn;

  EventStreamArgs({
    required this.applicationId,
    required this.destinationStreamArn,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['destinationStreamArn'] = destinationStreamArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    return map;
  }

  factory EventStreamArgs.fromMap(Map<String, dynamic> map) {
    return EventStreamArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      destinationStreamArn: Input.asInput<String>(map['destinationStreamArn']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
    );
  }
}
