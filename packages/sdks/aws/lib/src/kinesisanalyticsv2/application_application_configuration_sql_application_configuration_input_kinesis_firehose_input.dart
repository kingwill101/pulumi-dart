// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationInputKinesisFirehoseInput {
  /// The ARN of the delivery stream.
  final pulumi.Input<String> resourceArn;

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
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}

