// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput {
  /// The ARN of the destination Kinesis data stream to write to.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput].
  /// [resourceArn] The ARN of the destination Kinesis data stream to write to.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}
