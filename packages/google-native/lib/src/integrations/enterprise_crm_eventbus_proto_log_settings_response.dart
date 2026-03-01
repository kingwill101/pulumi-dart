// ignore_for_file: unused_element, unnecessary_cast

import 'enterprise_crm_logging_gws_field_limits_response.dart';
import 'enterprise_crm_logging_gws_sanitize_options_response.dart';

/// The LogSettings define the logging attributes for an event property. These attributes are used to map the property to the parameter in the log proto. Also used to define scrubbing/truncation behavior and PII information.
class EnterpriseCrmEventbusProtoLogSettingsResponse {
  /// The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  final String logFieldName;

  /// Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  final EnterpriseCrmLoggingGwsSanitizeOptionsResponse sanitizeOptions;
  final String seedPeriod;
  final String seedScope;

  /// Contains the field limits for shortening, such as max string length and max array length.
  final EnterpriseCrmLoggingGwsFieldLimitsResponse shorteningLimits;

  /// Creates a new [EnterpriseCrmEventbusProtoLogSettingsResponse].
  /// [logFieldName] The name of corresponding logging field of the event property. If omitted, assumes the same name as the event property key.
  /// [sanitizeOptions] Contains the scrubbing options, such as whether to scrub, obfuscate, etc.
  /// [seedPeriod] Required.
  /// [seedScope] Required.
  /// [shorteningLimits] Contains the field limits for shortening, such as max string length and max array length.
  EnterpriseCrmEventbusProtoLogSettingsResponse({
    required this.logFieldName,
    required this.sanitizeOptions,
    required this.seedPeriod,
    required this.seedScope,
    required this.shorteningLimits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFieldName': logFieldName,
      'sanitizeOptions': sanitizeOptions.toMap(),
      'seedPeriod': seedPeriod,
      'seedScope': seedScope,
      'shorteningLimits': shorteningLimits.toMap(),
    };
  }

  factory EnterpriseCrmEventbusProtoLogSettingsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoLogSettingsResponse(
      logFieldName: map['logFieldName'] as String,
      sanitizeOptions: EnterpriseCrmLoggingGwsSanitizeOptionsResponse.fromMap(
        (map['sanitizeOptions'] as Map).cast<String, dynamic>(),
      ),
      seedPeriod: map['seedPeriod'] as String,
      seedScope: map['seedScope'] as String,
      shorteningLimits: EnterpriseCrmLoggingGwsFieldLimitsResponse.fromMap(
        (map['shorteningLimits'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
