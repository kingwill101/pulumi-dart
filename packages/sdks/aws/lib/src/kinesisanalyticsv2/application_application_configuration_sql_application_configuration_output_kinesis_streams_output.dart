// ignore_for_file: unused_element, unnecessary_cast


class ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput {
  /// The ARN of the destination Kinesis data stream to write to.
  final String resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput].
  /// [resourceArn] The ARN of the destination Kinesis data stream to write to.
  ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisStreamsOutput(
      resourceArn: map['resourceArn'] as String,
    );
  }
}

