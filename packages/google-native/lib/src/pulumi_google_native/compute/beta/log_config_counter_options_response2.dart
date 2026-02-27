// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'log_config_counter_options_custom_field_response2.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsResponse2 {
  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigCounterOptionsCustomFieldResponse2> customFields;

  /// This is deprecated and has no effect. Do not use.
  final String field;

  /// This is deprecated and has no effect. Do not use.
  final String metric;

  LogConfigCounterOptionsResponse2({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customFields'] = Input.encodeList<
        LogConfigCounterOptionsCustomFieldResponse2,
        Map<String, dynamic>>(customFields, (value) => value.toMap());
    map['field'] = field;
    map['metric'] = metric;
    return map;
  }

  factory LogConfigCounterOptionsResponse2.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsResponse2(
      customFields:
          Input.decodeList<LogConfigCounterOptionsCustomFieldResponse2>(
              map['customFields'],
              (value) => LogConfigCounterOptionsCustomFieldResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      field: map['field'] as String,
      metric: map['metric'] as String,
    );
  }
}
