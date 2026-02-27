// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_field.dart';

/// Increment a streamz counter with the specified metric and field names. Metric names should start with a '/', generally be lowercase-only, and end in "_count". Field names should not contain an initial slash. The actual exported metric names will have "/iam/policy" prepended. Field names correspond to IAM request parameters and field values are their respective values. Supported field names: - "authority", which is "[token]" if IAMContext.token is present, otherwise the value of IAMContext.authority_selector if present, and otherwise a representation of IAMContext.principal; or - "iam_principal", a representation of IAMContext.principal even if a token or authority selector is present; or - "" (empty string), resulting in a counter with no fields. Examples: counter { metric: "/debug_access_count" field: "iam_principal" } ==> increment counter /iam/policy/debug_access_count {iam_principal=[value of IAMContext.principal]}
class CounterOptions {
  /// Custom fields.
  final List<CustomField>? customFields;

  /// The field value to attribute.
  final String? field;

  /// The metric to update.
  final String? metric;

  CounterOptions({
    this.customFields,
    this.field,
    this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customFieldsValue = customFields;
    if (customFieldsValue != null) {
      map['customFields'] = Input.encodeList<CustomField, Map<String, dynamic>>(
          customFieldsValue, (value) => value.toMap());
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

  factory CounterOptions.fromMap(Map<String, dynamic> map) {
    return CounterOptions(
      customFields: map['customFields'] == null
          ? null
          : Input.decodeList<CustomField>(
              map['customFields'],
              (value) =>
                  CustomField.fromMap((value as Map).cast<String, dynamic>())),
      field: map['field'] == null ? null : map['field'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
    );
  }
}
