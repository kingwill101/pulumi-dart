// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema {
  /// Specifies the format of the records on the output stream. Valid values: `CSV`, `JSON`.
  final pulumi.Input<String> recordFormatType;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema].
  /// [recordFormatType] Specifies the format of the records on the output stream. Valid values: `CSV`, `JSON`.
  ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema({
    required this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordFormatType': recordFormatType,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema(
      recordFormatType: pulumi.Input.fromValue(map['recordFormatType'] as String),
    );
  }
}

