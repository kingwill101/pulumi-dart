// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_security_policy_advanced_options_config_json_custom_config/get_security_policy_advanced_options_config_json_custom_config.dart';

class GetSecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  final List<GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>
      jsonCustomConfigs;

  /// JSON body parsing. Supported values include: "DISABLED", "STANDARD".
  final String jsonParsing;

  /// Logging level. Supported values include: "NORMAL", "VERBOSE".
  final String logLevel;

  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB". Values are case insensitive.
  final String requestBodyInspectionSize;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String> userIpRequestHeaders;

  GetSecurityPolicyAdvancedOptionsConfig({
    required this.jsonCustomConfigs,
    required this.jsonParsing,
    required this.logLevel,
    required this.requestBodyInspectionSize,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonCustomConfigs'] = pulumi.Input.encodeList<
        GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig,
        Map<String, dynamic>>(jsonCustomConfigs, (value) => value.toMap());
    map['jsonParsing'] = jsonParsing;
    map['logLevel'] = logLevel;
    map['requestBodyInspectionSize'] = requestBodyInspectionSize;
    map['userIpRequestHeaders'] = userIpRequestHeaders;
    return map;
  }

  factory GetSecurityPolicyAdvancedOptionsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfigs: pulumi.Input.decodeList<
              GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>(
          map['jsonCustomConfigs'],
          (value) =>
              GetSecurityPolicyAdvancedOptionsConfigJsonCustomConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      jsonParsing: map['jsonParsing'] as String,
      logLevel: map['logLevel'] as String,
      requestBodyInspectionSize: map['requestBodyInspectionSize'] as String,
      userIpRequestHeaders:
          (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}
