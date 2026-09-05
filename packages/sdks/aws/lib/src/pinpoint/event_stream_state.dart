// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventStream resources.
class EventStreamState {
  /// Application ID.
  final pulumi.Input<String?>? applicationId;
  /// ARN of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  final pulumi.Input<String?>? destinationStreamArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// IAM role that authorizes AWS End User Messaging to publish events to the stream in your account.
  final pulumi.Input<String?>? roleArn;

  /// Creates a new [EventStreamState].
  /// [applicationId] Application ID.
  /// [destinationStreamArn] ARN of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] IAM role that authorizes AWS End User Messaging to publish events to the stream in your account.
  const EventStreamState({
    this.applicationId,
    this.destinationStreamArn,
    this.region,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'destinationStreamArn': ?destinationStreamArn,
      'region': ?region,
      'roleArn': ?roleArn,
    };
  }

  factory EventStreamState.fromMap(Map<String, dynamic> map) {
    return EventStreamState(
      applicationId: (() { final guardedValue = map['applicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationStreamArn: (() { final guardedValue = map['destinationStreamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
