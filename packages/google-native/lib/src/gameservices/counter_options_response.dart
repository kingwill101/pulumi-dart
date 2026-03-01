// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_field_response.dart';

/// Increment a streamz counter with the specified metric and field names. Metric names should start with a '/', generally be lowercase-only, and end in "_count". Field names should not contain an initial slash. The actual exported metric names will have "/iam/policy" prepended. Field names correspond to IAM request parameters and field values are their respective values. Supported field names: - "authority", which is "[token]" if IAMContext.token is present, otherwise the value of IAMContext.authority_selector if present, and otherwise a representation of IAMContext.principal; or - "iam_principal", a representation of IAMContext.principal even if a token or authority selector is present; or - "" (empty string), resulting in a counter with no fields. Examples: counter { metric: "/debug_access_count" field: "iam_principal" } ==> increment counter /iam/policy/debug_access_count {iam_principal=[value of IAMContext.principal]}
class CounterOptionsResponse {
  /// Custom fields.
  final List<CustomFieldResponse> customFields;

  /// The field value to attribute.
  final String field;

  /// The metric to update.
  final String metric;

  /// Creates a new [CounterOptionsResponse].
  /// [customFields] Custom fields.
  /// [field] The field value to attribute.
  /// [metric] The metric to update.
  CounterOptionsResponse({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customFields':
          pulumi.Input.encodeList<CustomFieldResponse, Map<String, dynamic>>(
            customFields,
            (value) => value.toMap(),
          ),
      'field': field,
      'metric': metric,
    };
  }

  factory CounterOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CounterOptionsResponse(
      customFields: pulumi.Input.decodeList<CustomFieldResponse>(
        map['customFields'],
        (value) =>
            CustomFieldResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      field: map['field'] as String,
      metric: map['metric'] as String,
    );
  }
}
