// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_event_stream_event_stream_args_doc}
/// The set of arguments for EventStream.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_event_stream_event_stream_args_doc}
class EventStreamArgs {
  /// The application ID.
  final pulumi.Input<String> applicationId;
  /// The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  final pulumi.Input<String> destinationStreamArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  final pulumi.Input<String> roleArn;

  /// Creates a new [EventStreamArgs].
  /// [applicationId] The application ID.
  /// [destinationStreamArn] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  EventStreamArgs({
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> destinationStreamArn,
    pulumi.Output<String>? region,
    required pulumi.Output<String> roleArn,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      destinationStreamArn = pulumi.Input.asInput<String>(destinationStreamArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn);

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
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      destinationStreamArn: pulumi.Output.create<String>(map['destinationStreamArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
    );
  }
}

