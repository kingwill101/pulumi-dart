// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'log_config_counter_options_custom_field3.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptions3 {
  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigCounterOptionsCustomField3>? customFields;

  /// This is deprecated and has no effect. Do not use.
  final String? field;

  /// This is deprecated and has no effect. Do not use.
  final String? metric;

  LogConfigCounterOptions3({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFieldsValue = customFields;
    if (customFieldsValue != null) {
      map['customFields'] = Input.encodeList<
          LogConfigCounterOptionsCustomField3,
          Map<String, dynamic>>(customFieldsValue, (value) => value.toMap());
    }
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    final metricValue = metric;
    if (metricValue != null) {
      map['metric'] = metricValue;
    }
    return map;
  }

  factory LogConfigCounterOptions3.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptions3(
      customFields: map['customFields'] == null
          ? null
          : Input.decodeList<LogConfigCounterOptionsCustomField3>(
              map['customFields'],
              (value) => LogConfigCounterOptionsCustomField3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      field: map['field'] == null ? null : map['field'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
    );
  }
}
