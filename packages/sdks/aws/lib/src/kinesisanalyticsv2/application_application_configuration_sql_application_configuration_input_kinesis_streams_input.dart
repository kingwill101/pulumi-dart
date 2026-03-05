// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput {
  /// The ARN of the input Kinesis data stream to read.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput].
  /// [resourceArn] The ARN of the input Kinesis data stream to read.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}

