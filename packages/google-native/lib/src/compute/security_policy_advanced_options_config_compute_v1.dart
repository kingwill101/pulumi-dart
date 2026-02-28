// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_advanced_options_config_json_custom_config_compute_v1.dart';
import 'security_policy_advanced_options_config_json_parsing_compute_v1.dart';
import 'security_policy_advanced_options_config_log_level_compute_v1.dart';

class SecurityPolicyAdvancedOptionsConfigComputeV1 {
  /// Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  final SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1? jsonCustomConfig;
  final SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1? jsonParsing;
  final SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1? logLevel;
  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String>? userIpRequestHeaders;

  /// Creates a new [SecurityPolicyAdvancedOptionsConfigComputeV1].
  /// [jsonCustomConfig] Custom configuration to apply the JSON parsing. Only applicable when json_parsing is set to STANDARD.
  /// [jsonParsing] Optional.
  /// [logLevel] Optional.
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  SecurityPolicyAdvancedOptionsConfigComputeV1({
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

  factory SecurityPolicyAdvancedOptionsConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdvancedOptionsConfigComputeV1(
      jsonCustomConfig: map['jsonCustomConfig'] == null ? null : SecurityPolicyAdvancedOptionsConfigJsonCustomConfigComputeV1.fromMap((map['jsonCustomConfig'] as Map).cast<String, dynamic>()),
      jsonParsing: map['jsonParsing'] == null ? null : SecurityPolicyAdvancedOptionsConfigJsonParsingComputeV1.fromValue(map['jsonParsing'] as String),
      logLevel: map['logLevel'] == null ? null : SecurityPolicyAdvancedOptionsConfigLogLevelComputeV1.fromValue(map['logLevel'] as String),
      userIpRequestHeaders: map['userIpRequestHeaders'] == null ? null : (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}

