// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log Analytics configuration, must only be provided when destination is configured as 'log-analytics'
class LogAnalyticsConfigurationResponse {
  /// Log analytics customer id
  final pulumi.Input<String>? customerId;
  /// Boolean indicating whether to parse json string log into dynamic json columns
  final pulumi.Input<bool>? dynamicJsonColumns;

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
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicJsonColumns: (() { final guardedValue = map['dynamicJsonColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

