// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema {
  /// Specifies the format of the records on the output stream. Valid values: `CSV`, `JSON`.
  final String recordFormatType;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema].
  /// [recordFormatType] Specifies the format of the records on the output stream. Valid values: `CSV`, `JSON`.
  ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema({
    required this.recordFormatType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recordFormatType'] = recordFormatType;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutputDestinationSchema(
      recordFormatType: map['recordFormatType'] as String,
    );
  }
}
