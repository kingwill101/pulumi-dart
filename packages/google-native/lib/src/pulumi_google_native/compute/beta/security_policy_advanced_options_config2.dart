// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config2.dart';
import 'security_policy_advanced_options_config_json_parsing2.dart';
import 'security_policy_advanced_options_config_log_level2.dart';

class SecurityPolicyAdvancedOptionsConfig2 {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfig2? jsonCustomConfig;
  final SecurityPolicyAdvancedOptionsConfigJsonParsing2? jsonParsing;
  final SecurityPolicyAdvancedOptionsConfigLogLevel2? logLevel;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String>? userIpRequestHeaders;

  SecurityPolicyAdvancedOptionsConfig2({
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

  factory SecurityPolicyAdvancedOptionsConfig2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfig2(
      jsonCustomConfig: map['jsonCustomConfig'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigJsonCustomConfig2.fromMap(
              (map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing: map['jsonParsing'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigJsonParsing2.fromValue(
              map['jsonParsing'] as String),
      logLevel: map['logLevel'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigLogLevel2.fromValue(
              map['logLevel'] as String),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null
          ? null
          : (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}
