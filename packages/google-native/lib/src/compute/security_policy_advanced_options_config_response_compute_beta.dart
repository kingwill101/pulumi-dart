// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config_response_compute_beta.dart';

class SecurityPolicyAdvancedOptionsConfigResponseComputeBeta {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeBeta
  jsonCustomConfig;
  final String jsonParsing;
  final String logLevel;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String> userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigResponseComputeBeta].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Required.
  /// [logLevel] Required.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfigResponseComputeBeta({
    required this.jsonCustomConfig,
    required this.jsonParsing,
    required this.logLevel,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsonCustomConfig': jsonCustomConfig.toMap(),
      'jsonParsing': jsonParsing,
      'logLevel': logLevel,
      'userIpRequestHeaders': userIpRequestHeaders,
    };
  }

  factory SecurityPolicyAdvancedOptionsConfigResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdvancedOptionsConfigResponseComputeBeta(
      jsonCustomConfig:
          SecurityPolicyAdvancedOptionsConfigJsonCustomConfigResponseComputeBeta.fromMap(
            (map['jsonCustomConfig'] as Map).cast<String, dynamic>(),
          ),
      jsonParsing: map['jsonParsing'] as String,
      logLevel: map['logLevel'] as String,
      userIpRequestHeaders: (map['userIpRequestHeaders'] as List)
          .cast<String>(),
    );
  }
}
