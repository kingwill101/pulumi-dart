// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput {
  /// The ARN of the input Kinesis data stream to read.
  final String resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput].
  /// [resourceArn] The ARN of the input Kinesis data stream to read.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisStreamsInput(
      resourceArn: map['resourceArn'] as String,
    );
  }
}
