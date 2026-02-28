// ignore_for_file: unused_element, unnecessary_cast

import 'region_security_policy_advanced_options_config_json_custom_config.dart';

class RegionSecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  /// Structure is documented below.
  final RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig?
      jsonCustomConfig;

  /// JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL".
  /// Possible values are: `DISABLED`, `STANDARD`, `STANDARD_WITH_GRAPHQL`.
  final String? jsonParsing;

  /// Logging level. Supported values include: "NORMAL", "VERBOSE".
  /// Possible values are: `NORMAL`, `VERBOSE`.
  final String? logLevel;

  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB".
  /// Values are case insensitive.
  /// Possible values are: `8KB`, `16KB`, `32KB`, `48KB`, `64KB`.
  final String? requestBodyInspectionSize;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String>? userIpRequestHeaders;

  /// Creates a new [RegionSecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  /// [jsonParsing] JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL".
  /// [logLevel] Logging level. Supported values include: "NORMAL", "VERBOSE".
  /// [requestBodyInspectionSize] The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB".
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  RegionSecurityPolicyAdvancedOptionsConfig({
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

  factory RegionSecurityPolicyAdvancedOptionsConfig.fromMap(
      Map<String, dynamic> map) {
    return RegionSecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfig: map['jsonCustomConfig'] == null
          ? null
          : RegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
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
