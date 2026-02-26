// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config_response2.dart';

class SecurityPolicyAdvancedOptionsConfigResponse2 {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse2
      jsonCustomConfig;
  final String jsonParsing;
  final String logLevel;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String> userIpRequestHeaders;

  SecurityPolicyAdvancedOptionsConfigResponse2({
    required this.jsonCustomConfig,
    required this.jsonParsing,
    required this.logLevel,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonCustomConfig'] = jsonCustomConfig.toMap();
    map['jsonParsing'] = jsonParsing;
    map['logLevel'] = logLevel;
    map['userIpRequestHeaders'] = userIpRequestHeaders;
    return map;
  }

  factory SecurityPolicyAdvancedOptionsConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigResponse2(
      jsonCustomConfig:
          SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponse2.fromMap(
              (map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing: map['jsonParsing'] as String,
      logLevel: map['logLevel'] as String,
      userIpRequestHeaders:
          (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}
