// ignore_for_file: unused_element, unnecessary_cast


/// Log Analytics configuration, must only be provided when destination is configured as 'log-analytics'
class LogAnalyticsConfigurationResponse {
  /// Log analytics customer id
  final String? customerId;
  /// Boolean indicating whether to parse json string log into dynamic json columns
  final bool? dynamicJsonColumns;

  /// Creates a new [LogAnalyticsConfigurationResponse].
  /// [customerId] Log analytics customer id
  /// [dynamicJsonColumns] Boolean indicating whether to parse json string log into dynamic json columns
  LogAnalyticsConfigurationResponse({
    this.customerId,
    this.dynamicJsonColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': ?customerId,
      'dynamicJsonColumns': ?dynamicJsonColumns,
    };
  }

  factory LogAnalyticsConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsConfigurationResponse(
      customerId: map['customerId'] == null ? null : map['customerId'] as String,
      dynamicJsonColumns: map['dynamicJsonColumns'] == null ? null : map['dynamicJsonColumns'] as bool,
    );
  }
}

