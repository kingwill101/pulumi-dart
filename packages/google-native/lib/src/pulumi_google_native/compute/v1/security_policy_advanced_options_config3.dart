// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config3.dart';
import 'security_policy_advanced_options_config_json_parsing3.dart';
import 'security_policy_advanced_options_config_log_level3.dart';

class SecurityPolicyAdvancedOptionsConfig3 {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfig3? jsonCustomConfig;
  final SecurityPolicyAdvancedOptionsConfigJsonParsing3? jsonParsing;
  final SecurityPolicyAdvancedOptionsConfigLogLevel3? logLevel;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String>? userIpRequestHeaders;

  SecurityPolicyAdvancedOptionsConfig3({
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

  factory SecurityPolicyAdvancedOptionsConfig3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfig3(
      jsonCustomConfig: map['jsonCustomConfig'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigJsonCustomConfig3.fromMap(
              (map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing: map['jsonParsing'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigJsonParsing3.fromValue(
              map['jsonParsing'] as String),
      logLevel: map['logLevel'] == null
          ? null
          : SecurityPolicyAdvancedOptionsConfigLogLevel3.fromValue(
              map['logLevel'] as String),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null
          ? null
          : (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}
