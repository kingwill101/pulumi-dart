// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config_compute_beta.dart';
import 'security_policy_advanced_options_config_json_parsing_compute_beta.dart';
import 'security_policy_advanced_options_config_log_level_compute_beta.dart';

class SecurityPolicyAdvancedOptionsConfigComputeBeta {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta?
      jsonCustomConfig;
  final SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta? jsonParsing;
  final SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta? logLevel;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String>? userIpRequestHeaders;

  SecurityPolicyAdvancedOptionsConfigComputeBeta({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
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
      map['jsonParsing'] = jsonParsingValue.value;
    }
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue.value;
    }
    final userIpRequestHeadersValue = userIpRequestHeaders;
    if (userIpRequestHeadersValue != null) {
      map['userIpRequestHeaders'] = userIpRequestHeadersValue;
    }
    return map;
  }

  factory SecurityPolicyAdvancedOptionsConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigComputeBeta(
      jsonCustomConfig: map['jsonCustomConfig'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeBeta
              .fromMap(
                  (map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing: map['jsonParsing'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta.fromValue(
              map['jsonParsing'] as String),
      logLevel: map['logLevel'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta.fromValue(
              map['logLevel'] as String),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null
          ? null
          : (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}
