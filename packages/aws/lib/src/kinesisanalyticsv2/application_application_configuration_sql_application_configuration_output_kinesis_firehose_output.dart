// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput {
  /// The ARN of the destination delivery stream to write to.
  final String resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput].
  /// [resourceArn] The ARN of the destination delivery stream to write to.
  ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutputKinesisFirehoseOutput(
      resourceArn: map['resourceArn'] as String,
    );
  }
}
