// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_advanced_options_config_json_custom_config.dart';

class GetRegionSecurityPolicyAdvancedOptionsConfig {
  /// Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  final List<GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>
      jsonCustomConfigs;

  /// JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL". Possible values: ["DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL"]
  final String jsonParsing;

  /// Logging level. Supported values include: "NORMAL", "VERBOSE". Possible values: ["NORMAL", "VERBOSE"]
  final String logLevel;

  /// The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB".
  /// Values are case insensitive. Possible values: ["8KB", "16KB", "32KB", "48KB", "64KB"]
  final String requestBodyInspectionSize;

  /// An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  final List<String> userIpRequestHeaders;

  /// Creates a new [GetRegionSecurityPolicyAdvancedOptionsConfig].
  /// [jsonCustomConfigs] Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD.
  /// [jsonParsing] JSON body parsing. Supported values include: "DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL". Possible values: ["DISABLED", "STANDARD", "STANDARD_WITH_GRAPHQL"]
  /// [logLevel] Logging level. Supported values include: "NORMAL", "VERBOSE". Possible values: ["NORMAL", "VERBOSE"]
  /// [requestBodyInspectionSize] The maximum request size chosen by the customer with Waf enabled. Values supported are "8KB", "16KB, "32KB", "48KB" and "64KB".
  /// [userIpRequestHeaders] An optional list of case-insensitive request header names to use for resolving the callers client IP address.
  GetRegionSecurityPolicyAdvancedOptionsConfig({
    required this.jsonCustomConfigs,
    required this.jsonParsing,
    required this.logLevel,
    required this.requestBodyInspectionSize,
    required this.userIpRequestHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonCustomConfigs'] = pulumi.Input.encodeList<
        GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig,
        Map<String, dynamic>>(jsonCustomConfigs, (value) => value.toMap());
    map['jsonParsing'] = jsonParsing;
    map['logLevel'] = logLevel;
    map['requestBodyInspectionSize'] = requestBodyInspectionSize;
    map['userIpRequestHeaders'] = userIpRequestHeaders;
    return map;
  }

  factory GetRegionSecurityPolicyAdvancedOptionsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetRegionSecurityPolicyAdvancedOptionsConfig(
      jsonCustomConfigs: pulumi.Input.decodeList<
              GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig>(
          map['jsonCustomConfigs'],
          (value) =>
              GetRegionSecurityPolicyAdvancedOptionsConfigJsonCustomConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
      jsonParsing: map['jsonParsing'] as String,
      logLevel: map['logLevel'] as String,
      requestBodyInspectionSize: map['requestBodyInspectionSize'] as String,
      userIpRequestHeaders:
          (map['userIpRequestHeaders'] as List).cast<String>(),
    );
  }
}
