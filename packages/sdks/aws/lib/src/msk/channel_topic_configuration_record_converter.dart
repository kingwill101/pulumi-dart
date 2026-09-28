// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelTopicConfigurationRecordConverter {
  /// Deserialization format applied to Apache Kafka record values. Valid values are `BYTE_ARRAY`, `STRING`, `JSON`, and `JSON_SCHEMA_GSR`. The `icebergDestination` accepts only `JSON` or `JSON_SCHEMA_GSR`; the `s3Destination` accepts `BYTE_ARRAY`, `STRING`, or `JSON`.
  final pulumi.Input<String> valueConverter;

  /// Creates a new [ChannelTopicConfigurationRecordConverter].
  /// [valueConverter] Deserialization format applied to Apache Kafka record values. Valid values are `BYTE_ARRAY`, `STRING`, `JSON`, and `JSON_SCHEMA_GSR`. The `icebergDestination` accepts only `JSON` or `JSON_SCHEMA_GSR`; the `s3Destination` accepts `BYTE_ARRAY`, `STRING`, or `JSON`.
  const ChannelTopicConfigurationRecordConverter({
    required this.valueConverter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'valueConverter': valueConverter,
    };
  }

  factory ChannelTopicConfigurationRecordConverter.fromMap(Map<String, dynamic> map) {
    return ChannelTopicConfigurationRecordConverter(
      valueConverter: pulumi.Input.fromValue(map['valueConverter'] as String),
    );
  }
}
