// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelTopicConfigurationRecordSchema {
  /// ARN of the AWS Glue Schema Registry schema used to validate records for the destination Apache Iceberg table.
  final pulumi.Input<String> gsrArn;

  /// Creates a new [ChannelTopicConfigurationRecordSchema].
  /// [gsrArn] ARN of the AWS Glue Schema Registry schema used to validate records for the destination Apache Iceberg table.
  const ChannelTopicConfigurationRecordSchema({
    required this.gsrArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gsrArn': gsrArn,
    };
  }

  factory ChannelTopicConfigurationRecordSchema.fromMap(Map<String, dynamic> map) {
    return ChannelTopicConfigurationRecordSchema(
      gsrArn: pulumi.Input.fromValue(map['gsrArn'] as String),
    );
  }
}
