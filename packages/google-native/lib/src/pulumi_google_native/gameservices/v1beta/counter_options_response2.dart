// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_field_response2.dart';

/// Increment a streamz counter with the specified metric and field names. Metric names should start with a '/', generally be lowercase-only, and end in "_count". Field names should not contain an initial slash. The actual exported metric names will have "/iam/policy" prepended. Field names correspond to IAM request parameters and field values are their respective values. Supported field names: - "authority", which is "[token]" if IAMContext.token is present, otherwise the value of IAMContext.authority_selector if present, and otherwise a representation of IAMContext.principal; or - "iam_principal", a representation of IAMContext.principal even if a token or authority selector is present; or - "" (empty string), resulting in a counter with no fields. Examples: counter { metric: "/debug_access_count" field: "iam_principal" } ==> increment counter /iam/policy/debug_access_count {iam_principal=[value of IAMContext.principal]}
class CounterOptionsResponse2 {
  /// Custom fields.
  final List<CustomFieldResponse2> customFields;

  /// The field value to attribute.
  final String field;

  /// The metric to update.
  final String metric;

  CounterOptionsResponse2({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customFields'] =
        Input.encodeList<CustomFieldResponse2, Map<String, dynamic>>(
            customFields, (value) => value.toMap());
    map['field'] = field;
    map['metric'] = metric;
    return map;
  }

  factory CounterOptionsResponse2.fromMap(Map<String, dynamic> map) {
    return CounterOptionsResponse2(
      customFields: Input.decodeList<CustomFieldResponse2>(
          map['customFields'],
          (value) => CustomFieldResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      field: map['field'] as String,
      metric: map['metric'] as String,
    );
  }
}
