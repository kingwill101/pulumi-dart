// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_eventbus_proto_log_settings_seed_period.dart';
import 'enterprise_crm_eventbus_proto_log_settings_seed_scope.dart';
import 'enterprise_crm_logging_gws_field_limits.dart';
import 'enterprise_crm_logging_gws_sanitize_options.dart';

/// The LogSettings define the logging attributes for an event property. These attributes are used to map the property to the parameter in the log proto. Also used to define scrubbing/truncation behavior and PII information.
class EnterpriseCrmEventbusProtoLogSettings {
  /// The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  final String? logFieldName;

  /// Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  final EnterpriseCrmLoggingGwsSanitizeOptions? sanitizeOptions;
  final EnterpriseCrmEventbusProtoLogSettingsSeedPeriod? seedPeriod;
  final EnterpriseCrmEventbusProtoLogSettingsSeedScope? seedScope;

  /// Contains the field limits for shortening, such as max string length and max array length.
  final EnterpriseCrmLoggingGwsFieldLimits? shorteningLimits;

  EnterpriseCrmEventbusProtoLogSettings({
    this.logFieldName,
    this.sanitizeOptions,
    this.seedPeriod,
    this.seedScope,
    this.shorteningLimits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logFieldNameValue = logFieldName;
    if (logFieldNameValue != null) {
      map['logFieldName'] = logFieldNameValue;
    }
    final sanitizeOptionsValue = sanitizeOptions;
    if (sanitizeOptionsValue != null) {
      map['sanitizeOptions'] = sanitizeOptionsValue.toMap();
    }
    final seedPeriodValue = seedPeriod;
    if (seedPeriodValue != null) {
      map['seedPeriod'] = seedPeriodValue.value;
    }
    final seedScopeValue = seedScope;
    if (seedScopeValue != null) {
      map['seedScope'] = seedScopeValue.value;
    }
    final shorteningLimitsValue = shorteningLimits;
    if (shorteningLimitsValue != null) {
      map['shorteningLimits'] = shorteningLimitsValue.toMap();
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoLogSettings.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoLogSettings(
      logFieldName:
          map['logFieldName'] == null ? null : map['logFieldName'] as String,
      sanitizeOptions: map['sanitizeOptions'] == null
          ? null
          : EnterpriseCrmLoggingGwsSanitizeOptions.fromMap(
              (map['sanitizeOptions'] as Map).cast<String, dynamic>()),
      seedPeriod: map['seedPeriod'] == null
          ? null
          : EnterpriseCrmEventbusProtoLogSettingsSeedPeriod.fromValue(
              map['seedPeriod'] as String),
      seedScope: map['seedScope'] == null
          ? null
          : EnterpriseCrmEventbusProtoLogSettingsSeedScope.fromValue(
              map['seedScope'] as String),
      shorteningLimits: map['shorteningLimits'] == null
          ? null
          : EnterpriseCrmLoggingGwsFieldLimits.fromMap(
              (map['shorteningLimits'] as Map).cast<String, dynamic>()),
    );
  }
}
