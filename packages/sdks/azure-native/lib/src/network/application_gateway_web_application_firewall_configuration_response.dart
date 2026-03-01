// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_firewall_disabled_rule_group_response.dart';
import 'application_gateway_firewall_exclusion_response.dart';

/// Application gateway web application firewall configuration.
class ApplicationGatewayWebApplicationFirewallConfigurationResponse {
  /// The disabled rule groups.
  final List<ApplicationGatewayFirewallDisabledRuleGroupResponse>? disabledRuleGroups;
  /// Whether the web application firewall is enabled or not.
  final bool enabled;
  /// The exclusion list.
  final List<ApplicationGatewayFirewallExclusionResponse>? exclusions;
  /// Maximum file upload size in Mb for WAF.
  final int? fileUploadLimitInMb;
  /// Web application firewall mode.
  final String firewallMode;
  /// Maximum request body size for WAF.
  final int? maxRequestBodySize;
  /// Maximum request body size in Kb for WAF.
  final int? maxRequestBodySizeInKb;
  /// Whether allow WAF to check request Body.
  final bool? requestBodyCheck;
  /// The type of the web application firewall rule set. Possible values are: 'OWASP'.
  final String ruleSetType;
  /// The version of the rule set type.
  final String ruleSetVersion;

  /// Creates a new [ApplicationGatewayWebApplicationFirewallConfigurationResponse].
  /// [disabledRuleGroups] The disabled rule groups.
  /// [enabled] Whether the web application firewall is enabled or not.
  /// [exclusions] The exclusion list.
  /// [fileUploadLimitInMb] Maximum file upload size in Mb for WAF.
  /// [firewallMode] Web application firewall mode.
  /// [maxRequestBodySize] Maximum request body size for WAF.
  /// [maxRequestBodySizeInKb] Maximum request body size in Kb for WAF.
  /// [requestBodyCheck] Whether allow WAF to check request Body.
  /// [ruleSetType] The type of the web application firewall rule set. Possible values are: 'OWASP'.
  /// [ruleSetVersion] The version of the rule set type.
  ApplicationGatewayWebApplicationFirewallConfigurationResponse({
    this.disabledRuleGroups,
    required this.enabled,
    this.exclusions,
    this.fileUploadLimitInMb,
    required this.firewallMode,
    this.maxRequestBodySize,
    this.maxRequestBodySizeInKb,
    this.requestBodyCheck,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledRuleGroups': ?disabledRuleGroups == null ? null : pulumi.Input.encodeList<ApplicationGatewayFirewallDisabledRuleGroupResponse, Map<String, dynamic>>(disabledRuleGroups!, (value) => value.toMap()),
      'enabled': enabled,
      'exclusions': ?exclusions == null ? null : pulumi.Input.encodeList<ApplicationGatewayFirewallExclusionResponse, Map<String, dynamic>>(exclusions!, (value) => value.toMap()),
      'fileUploadLimitInMb': ?fileUploadLimitInMb,
      'firewallMode': firewallMode,
      'maxRequestBodySize': ?maxRequestBodySize,
      'maxRequestBodySizeInKb': ?maxRequestBodySizeInKb,
      'requestBodyCheck': ?requestBodyCheck,
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayWebApplicationFirewallConfigurationResponse(
      disabledRuleGroups: map['disabledRuleGroups'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayFirewallDisabledRuleGroupResponse>(map['disabledRuleGroups'], (value) => ApplicationGatewayFirewallDisabledRuleGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      exclusions: map['exclusions'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayFirewallExclusionResponse>(map['exclusions'], (value) => ApplicationGatewayFirewallExclusionResponse.fromMap((value as Map).cast<String, dynamic>())),
      fileUploadLimitInMb: map['fileUploadLimitInMb'] == null ? null : map['fileUploadLimitInMb'] as int,
      firewallMode: map['firewallMode'] as String,
      maxRequestBodySize: map['maxRequestBodySize'] == null ? null : map['maxRequestBodySize'] as int,
      maxRequestBodySizeInKb: map['maxRequestBodySizeInKb'] == null ? null : map['maxRequestBodySizeInKb'] as int,
      requestBodyCheck: map['requestBodyCheck'] == null ? null : map['requestBodyCheck'] as bool,
      ruleSetType: map['ruleSetType'] as String,
      ruleSetVersion: map['ruleSetVersion'] as String,
    );
  }
}

