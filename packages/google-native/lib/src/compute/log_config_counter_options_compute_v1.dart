// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigCounterOptionsCustomFieldComputeV1>? customFields;

  /// This is deprecated and has no effect. Do not use.
  final String? field;

  /// This is deprecated and has no effect. Do not use.
  final String? metric;

  /// Creates a new [LogConfigCounterOptionsComputeV1].
  /// [customFields] This is deprecated and has no effect. Do not use.
  /// [field] This is deprecated and has no effect. Do not use.
  /// [metric] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsComputeV1({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFieldsValue = customFields;
    if (customFieldsValue != null) {
      map['customFields'] = pulumi.Input.encodeList<
          LogConfigCounterOptionsCustomFieldComputeV1,
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

  factory LogConfigCounterOptionsComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsComputeV1(
      customFields: map['customFields'] == null
          ? null
          : pulumi.Input.decodeList<
                  LogConfigCounterOptionsCustomFieldComputeV1>(
              map['customFields'],
              (value) => LogConfigCounterOptionsCustomFieldComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      field: map['field'] == null ? null : map['field'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
    );
  }
}
