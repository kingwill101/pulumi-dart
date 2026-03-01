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

  /// Creates a new [EnterpriseCrmLoggingGwsFieldLimits].
  /// [logAction] Optional.
  /// [logType] To which type(s) of logs the limits apply.
  /// [maxArraySize] maximum array size. If the array exceds this size, the field (list) is truncated.
  /// [maxStringLength] maximum string length. If the field exceeds this amount the field is shortened.
  /// [shortenerType] Optional.
  EnterpriseCrmLoggingGwsFieldLimits({
    this.logAction,
    this.logType,
    this.maxArraySize,
    this.maxStringLength,
    this.shortenerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAction': ?logAction == null ? null : logAction!.value,
      'logType': ?logType == null
          ? null
          : pulumi.Input.encodeList<
              EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem,
              String
            >(logType!, (value) => value.value),
      'maxArraySize': ?maxArraySize,
      'maxStringLength': ?maxStringLength,
      'shortenerType': ?shortenerType == null ? null : shortenerType!.value,
    };
  }

  factory EnterpriseCrmLoggingGwsFieldLimits.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmLoggingGwsFieldLimits(
      logAction: map['logAction'] == null
          ? null
          : EnterpriseCrmLoggingGwsFieldLimitsLogAction.fromValue(
              map['logAction'] as String,
            ),
      logType: map['logType'] == null
          ? null
          : pulumi.Input.decodeList<
              EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem
            >(
              map['logType'],
              (value) =>
                  EnterpriseCrmLoggingGwsFieldLimitsLogTypeItem.fromValue(
                    value as String,
                  ),
            ),
      maxArraySize: map['maxArraySize'] == null
          ? null
          : map['maxArraySize'] as int,
      maxStringLength: map['maxStringLength'] == null
          ? null
          : map['maxStringLength'] as int,
      shortenerType: map['shortenerType'] == null
          ? null
          : EnterpriseCrmLoggingGwsFieldLimitsShortenerType.fromValue(
              map['shortenerType'] as String,
            ),
    );
  }
}
