// ignore_for_file: unused_element, unnecessary_cast

import '../security_policy_advanced_options_config_json_custom_config/security_policy_advanced_options_config_json_custom_config.dart';

class SecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when
  /// `json_parsing` is set to `STANDARD`. Structure is documented below.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfig? jsonCustomConfig;

  /// Whether or not to JSON parse the payload body. Defaults to `DISABLED`.
  /// * `DISABLED` - Don't parse JSON payloads in POST bodies.
  /// * `STANDARD` - Parse JSON payloads in POST bodies.
  /// * `STANDARD_WITH_GRAPHQL` - Parse JSON and GraphQL payloads in POST bodies.
  final String? jsonParsing;

  /// Log level to use. Defaults to `NORMAL`.
  /// * `NORMAL` - Normal log level.
  /// * `VERBOSE` - Verbose log level.
  final String? logLevel;

  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB". Values are case insensitive.
  final String? requestBodyInspectionSize;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String>? userIpRequestHeaders;

  SecurityPolicyAdvancedOptionsConfig({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.requestBodyInspectionSize,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jsonCustomConfigValue = jsonCustomConfig;
    if (jsonCustomConfigValue != null) {
      map['jsonCustomConfig'] = jsonCustomConfigValue.toMap();
    }
    final jsonParsingValue = jsonParsing;
    if (jsonParsingValue != null) {
      map['jsonParsing'] = jsonParsingValue;
    }
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue;
    }
    final requestBodyInspectionSizeValue = requestBodyInspectionSize;
    if (requestBodyInspectionSizeValue != null) {
      map['requestBodyInspectionSize'] = requestBodyInspectionSizeValue;
    }
    final userIpRequestHeadersValue = userIpRequestHeaders;
    if (userIpRequestHeadersValue != null) {
      map['userIpRequestHeaders'] = userIpRequestHeadersValue;
    }
    return map;
  }

  factory SecurityPolicyAdvancedOptionsConfig.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfig: map['jsonCustomConfig'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
              (map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing:
          map['jsonParsing'] == null ? null : map['jsonParsing'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      requestBodyInspectionSize: map['requestBodyInspectionSize'] == null
          ? null
          : map['requestBodyInspectionSize'] as String,
      userIpRequestHeaders: map['userIpRequestHeaders'] == null
          ? null
          : (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}
