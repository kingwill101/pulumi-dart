// ignore_for_file: unused_element, unnecessary_cast


class ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput {
  /// The ARN of the delivery stream.
  final String resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput].
  /// [resourceArn] The ARN of the delivery stream.
  ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput(
      resourceArn: map['resourceArn'] as String,
    );
  }
}

