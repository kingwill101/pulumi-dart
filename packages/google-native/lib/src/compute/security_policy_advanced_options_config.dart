// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config.dart';
import 'security_policy_advanced_options_config_json_parsing.dart';
import 'security_policy_advanced_options_config_log_level.dart';

class SecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfig? jsonCustomConfig;
  final SecurityPolicyAdvancedOptionsConfigJsonParsing? jsonParsing;
  final SecurityPolicyAdvancedOptionsConfigLogLevel? logLevel;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String>? userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Optional.
  /// [logLevel] Optional.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfig({
    this.jsonCustomConfig,
    this.jsonParsing,
    this.logLevel,
    this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': ?jsonCustomConfig == null ? null : jsonCustomConfig!.toMap(),
      'jsonParsing': ?jsonParsing == null ? null : jsonParsing!.value,
      'logLevel': ?logLevel == null ? null : logLevel!.value,
      'userIpRequestHeaders': ?userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfig: map['jsonCustomConfig'] == null ? null : SecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap((map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing: map['jsonParsing'] == null ? null : SecurityPolicyAdvancedOptionsConfigJsonParsing.fromValue(map['jsonParsing'] as String),
      logLevel: map['logLevel'] == null ? null : SecurityPolicyAdvancedOptionsConfigLogLevel.fromValue(map['logLevel'] as String),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null ? null : (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}

