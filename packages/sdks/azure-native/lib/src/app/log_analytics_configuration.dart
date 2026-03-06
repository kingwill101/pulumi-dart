// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Log Analytics configuration, must only be provided when destination is configured as 'log-analytics'
class LogAnalyticsConfiguration {
  /// Log analytics customer id
  final pulumi.Input<String>? customerId;
  /// Boolean indicating whether to parse json string log into dynamic json columns
  final pulumi.Input<bool>? dynamicJsonColumns;
  /// Log analytics customer key
  final pulumi.Input<String>? sharedKey;

  /// Creates a new [LogAnalyticsConfiguration].
  /// [customerId] Log analytics customer id
  /// [dynamicJsonColumns] Boolean indicating whether to parse json string log into dynamic json columns
  /// [sharedKey] Log analytics customer key
  const LogAnalyticsConfiguration({
    this.customerId,
    this.dynamicJsonColumns,
    this.sharedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerId': ?customerId,
      'dynamicJsonColumns': ?dynamicJsonColumns,
      'sharedKey': ?sharedKey,
    };
  }

  factory LogAnalyticsConfiguration.fromMap(Map<String, dynamic> map) {
    return LogAnalyticsConfiguration(
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dynamicJsonColumns: (() { final guardedValue = map['dynamicJsonColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

