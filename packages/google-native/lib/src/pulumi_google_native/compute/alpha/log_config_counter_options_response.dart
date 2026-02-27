// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_config_counter_options_custom_field_response.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigCounterOptionsCustomFieldResponse> customFields;

  /// This is deprecated and has no effect. Do not use.
  final String field;

  /// This is deprecated and has no effect. Do not use.
  final String metric;

  LogConfigCounterOptionsResponse({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customFields'] = pulumi.Input.encodeList<
        LogConfigCounterOptionsCustomFieldResponse,
        Map<String, dynamic>>(customFields, (value) => value.toMap());
    map['field'] = field;
    map['metric'] = metric;
    return map;
  }

  factory LogConfigCounterOptionsResponse.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsResponse(
      customFields:
          pulumi.Input.decodeList<LogConfigCounterOptionsCustomFieldResponse>(
              map['customFields'],
              (value) => LogConfigCounterOptionsCustomFieldResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      field: map['field'] as String,
      metric: map['metric'] as String,
    );
  }
}
