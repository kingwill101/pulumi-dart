// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'log_config_counter_options_custom_field_response3.dart';

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsResponse3 {
  /// This is deprecated and has no effect. Do not use.
  final List<LogConfigCounterOptionsCustomFieldResponse3> customFields;

  /// This is deprecated and has no effect. Do not use.
  final String field;

  /// This is deprecated and has no effect. Do not use.
  final String metric;

  LogConfigCounterOptionsResponse3({
    required this.customFields,
    required this.field,
    required this.metric,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customFields'] = Input.encodeList<
        LogConfigCounterOptionsCustomFieldResponse3,
        Map<String, dynamic>>(customFields, (value) => value.toMap());
    map['field'] = field;
    map['metric'] = metric;
    return map;
  }

  factory LogConfigCounterOptionsResponse3.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsResponse3(
      customFields:
          Input.decodeList<LogConfigCounterOptionsCustomFieldResponse3>(
              map['customFields'],
              (value) => LogConfigCounterOptionsCustomFieldResponse3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      field: map['field'] as String,
      metric: map['metric'] as String,
    );
  }
}
