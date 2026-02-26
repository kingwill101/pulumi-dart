// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'log_config_counter_options_custom_field.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptions {
  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigCounterOptionsCustomField>? customFields;

  /// This is deprecated and has no effect. Do not use.
  final String? field;

  /// This is deprecated and has no effect. Do not use.
  final String? metric;

  LogConfigCounterOptions({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFieldsValue = customFields;
    if (customFieldsValue != null) {
      map['customFields'] = Input.encodeList<LogConfigCounterOptionsCustomField,
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

  factory LogConfigCounterOptions.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptions(
      customFields: map['customFields'] == null
          ? null
          : Input.decodeList<LogConfigCounterOptionsCustomField>(
              map['customFields'],
              (value) => LogConfigCounterOptionsCustomField.fromMap(
                  (value as Map).cast<String, dynamic>())),
      field: map['field'] == null ? null : map['field'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
    );
  }
}
