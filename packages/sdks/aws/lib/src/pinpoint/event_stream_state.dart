// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventStream resources.
class EventStreamState {
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  /// The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  final pulumi.Input<String>? destinationStreamArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [EventStreamState].
  /// [applicationId] The application ID.
  /// [destinationStreamArn] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
  EventStreamState({
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
      applicationId: map['applicationId'] == null ? null : ((map['applicationId'] as String).input()).input(),
      destinationStreamArn: map['destinationStreamArn'] == null ? null : ((map['destinationStreamArn'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
    );
  }
}

