// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_logging_gws_sanitize_options_log_type_item.dart';
import 'enterprise_crm_logging_gws_sanitize_options_privacy.dart';
import 'enterprise_crm_logging_gws_sanitize_options_sanitize_type.dart';

/// Identifies whether a field contains, or may contain, PII or sensitive data, and how to sanitize the field if it does. If a field's privacy type cannot be determined then it is sanitized (e.g., scrubbed). The specific sanitizer implementation is determined by run-time configuration and environment options (e.g., prod vs. qa). next_id: 5
class EnterpriseCrmLoggingGwsSanitizeOptions {
  /// If true, the value has already been sanitized and needs no further sanitization. For instance, a D3 customer id is already an obfuscated entity and *might not* need further sanitization.
  final bool? isAlreadySanitized;
  /// To which type(s) of logs the sanitize options apply.
  final List<EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem>? logType;
  final EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy? privacy;
  final EnterpriseCrmLoggingGwsSanitizeOptionsSanitizeType? sanitizeType;

  /// Creates a new [EnterpriseCrmLoggingGwsSanitizeOptions].
  /// [isAlreadySanitized] If true, the value has already been sanitized and needs no further sanitization. For instance, a D3 customer id is already an obfuscated entity and *might not* need further sanitization.
  /// [logType] To which type(s) of logs the sanitize options apply.
  /// [privacy] Optional.
  /// [sanitizeType] Optional.
  EnterpriseCrmLoggingGwsSanitizeOptions({
    this.isAlreadySanitized,
    this.logType,
    this.privacy,
    this.sanitizeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isAlreadySanitized': ?isAlreadySanitized,
      'logType': ?logType == null ? null : pulumi.Input.encodeList<EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem, String>(logType!, (value) => value.value),
      'privacy': ?privacy == null ? null : privacy!.value,
      'sanitizeType': ?sanitizeType == null ? null : sanitizeType!.value,
    };
  }

  factory EnterpriseCrmLoggingGwsSanitizeOptions.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmLoggingGwsSanitizeOptions(
      isAlreadySanitized: map['isAlreadySanitized'] == null ? null : map['isAlreadySanitized'] as bool,
      logType: map['logType'] == null ? null : pulumi.Input.decodeList<EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem>(map['logType'], (value) => EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem.fromValue(value as String)),
      privacy: map['privacy'] == null ? null : EnterpriseCrmLoggingGwsSanitizeOptionsPrivacy.fromValue(map['privacy'] as String),
      sanitizeType: map['sanitizeType'] == null ? null : EnterpriseCrmLoggingGwsSanitizeOptionsSanitizeType.fromValue(map['sanitizeType'] as String),
    );
  }
}

