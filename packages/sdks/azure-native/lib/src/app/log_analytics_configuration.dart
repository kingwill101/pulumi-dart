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
  LogAnalyticsConfiguration({
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
      customerId: map['customerId'] == null ? null : (map['customerId']! as String).input(),
      dynamicJsonColumns: map['dynamicJsonColumns'] == null ? null : (map['dynamicJsonColumns']! as bool).input(),
      sharedKey: map['sharedKey'] == null ? null : (map['sharedKey']! as String).input(),
    );
  }
}

