// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_logging_gws_field_limits_log_action.dart';
import 'enterprise_crm_logging_gws_field_limits_log_type_item.dart';
import 'enterprise_crm_logging_gws_field_limits_shortener_type.dart';

/// Describes string and array limits when writing to logs. When a limit is exceeded the *shortener_type* describes how to shorten the field. next_id: 6
class EnterpriseCrmLoggingGwsFieldLimits {
  final EnterpriseCrmLoggingGwsFieldLimitsLogAction? logAction;

  /// To which type(s) of logs the limits apply.
  final List<EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem>? logType;

  /// maximum array size. If the array exceds this size, the field (list) is truncated.
  final int? maxArraySize;

  /// maximum string length. If the field exceeds this amount the field is shortened.
  final int? maxStringLength;
  final EnterpriseCrmLoggingGwsFieldLimitsShortenerType? shortenerType;

  EnterpriseCrmLoggingGwsFieldLimits({
    this.logAction,
    this.logType,
    this.maxArraySize,
    this.maxStringLength,
    this.shortenerType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logActionValue = logAction;
    if (logActionValue != null) {
      map['logAction'] = logActionValue.value;
    }
    final logTypeValue = logType;
    if (logTypeValue != null) {
      map['logType'] = pulumi.Input.encodeList<
          EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem,
          String>(logTypeValue, (value) => value.value);
    }
    final maxArraySizeValue = maxArraySize;
    if (maxArraySizeValue != null) {
      map['maxArraySize'] = maxArraySizeValue;
    }
    final maxStringLengthValue = maxStringLength;
    if (maxStringLengthValue != null) {
      map['maxStringLength'] = maxStringLengthValue;
    }
    final shortenerTypeValue = shortenerType;
    if (shortenerTypeValue != null) {
      map['shortenerType'] = shortenerTypeValue.value;
    }
    return map;
  }

  factory EnterpriseCrmLoggingGwsFieldLimits.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmLoggingGwsFieldLimits(
      logAction: map['logAction'] == null
          ? null
          : EnterpriseCrmLoggingGwsFieldLimitsLogAction.fromValue(
              map['logAction'] as String),
      logType: map['logType'] == null
          ? null
          : pulumi.Input.decodeList<
                  EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem>(
              map['logType'],
              (value) =>
                  EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem.fromValue(
                      value as String)),
      maxArraySize:
          map['maxArraySize'] == null ? null : map['maxArraySize'] as int,
      maxStringLength:
          map['maxStringLength'] == null ? null : map['maxStringLength'] as int,
      shortenerType: map['shortenerType'] == null
          ? null
          : EnterpriseCrmLoggingGwsFieldLimitsShortenerType.fromValue(
              map['shortenerType'] as String),
    );
  }
}
