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
    return <String, dynamic>{
      'customFields': ?customFields == null
          ? null
          : pulumi.Input.encodeList<
              LogConfigCounterOptionsCustomFieldComputeV1,
              Map<String, dynamic>
            >(customFields!, (value) => value.toMap()),
      'field': ?field,
      'metric': ?metric,
    };
  }

  factory LogConfigCounterOptionsComputeV1.fromMap(Map<String, dynamic> map) {
    return LogConfigCounterOptionsComputeV1(
      customFields: map['customFields'] == null
          ? null
          : pulumi
                .Input.decodeList<LogConfigCounterOptionsCustomFieldComputeV1>(
              map['customFields'],
              (value) => LogConfigCounterOptionsCustomFieldComputeV1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      field: map['field'] == null ? null : map['field'] as String,
      metric: map['metric'] == null ? null : map['metric'] as String,
    );
  }
}
