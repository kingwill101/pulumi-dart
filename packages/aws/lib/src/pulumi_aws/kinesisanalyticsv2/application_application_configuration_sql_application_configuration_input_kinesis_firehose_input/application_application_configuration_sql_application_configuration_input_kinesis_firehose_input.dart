// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput {
  /// The ARN of the delivery stream.
  final String resourceArn;

  ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput(
      resourceArn: map['resourceArn'] as String,
    );
  }
}
