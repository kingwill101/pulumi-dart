// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_event_stream_event_stream_args_doc}
/// The set of arguments for EventStream.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_event_stream_event_stream_args_doc}
class EventStreamArgs {
  /// Application ID.
  final pulumi.Input<String> applicationId;
  /// Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  final pulumi.Input<String> destinationStreamArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// IAM role that authorizes AWS End User Messaging to publish events to the stream in your account.
  final pulumi.Input<String> roleArn;

  /// Creates a new [EventStreamArgs].
  /// [applicationId] Application ID.
  /// [destinationStreamArn] Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] IAM role that authorizes AWS End User Messaging to publish events to the stream in your account.
  const EventStreamArgs({
    required this.applicationId,
    required this.destinationStreamArn,
    this.region,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'destinationStreamArn': destinationStreamArn,
      'region': ?region,
      'roleArn': roleArn,
    };
  }

  factory EventStreamArgs.fromMap(Map<String, dynamic> map) {
    return EventStreamArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      destinationStreamArn: pulumi.Input.fromValue(map['destinationStreamArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}
