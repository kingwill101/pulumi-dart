// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_firewall_disabled_rule_group.dart';
import 'application_gateway_firewall_exclusion.dart';

/// Application gateway web application firewall configuration.
class ApplicationGatewayWebApplicationFirewallConfiguration {
  /// The disabled rule groups.
  final pulumi.Input<List<ApplicationGatewayFirewallDisabledRuleGroup>>? disabledRuleGroups;
  /// Whether the web application firewall is enabled or not.
  final pulumi.Input<bool> enabled;
  /// The exclusion list.
  final pulumi.Input<List<ApplicationGatewayFirewallExclusion>>? exclusions;
  /// Maximum file upload size in Mb for WAF.
  final pulumi.Input<int>? fileUploadLimitInMb;
  /// Web application firewall mode.
  final pulumi.Input<String> firewallMode;
  /// Maximum request body size for WAF.
  final pulumi.Input<int>? maxRequestBodySize;
  /// Maximum request body size in Kb for WAF.
  final pulumi.Input<int>? maxRequestBodySizeInKb;
  /// Whether allow WAF to check request Body.
  final pulumi.Input<bool>? requestBodyCheck;
  /// The type of the web application firewall rule set. Possible values are: 'OWASP'.
  final pulumi.Input<String> ruleSetType;
  /// The version of the rule set type.
  final pulumi.Input<String> ruleSetVersion;

  /// Creates a new [ApplicationGatewayWebApplicationFirewallConfiguration].
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
  const ApplicationGatewayWebApplicationFirewallConfiguration({
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
      'disabledRuleGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayFirewallDisabledRuleGroup>, List<Map<String, dynamic>>>(disabledRuleGroups, (value) => pulumi.Input.encodeList<ApplicationGatewayFirewallDisabledRuleGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayFirewallExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<ApplicationGatewayFirewallExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileUploadLimitInMb': ?fileUploadLimitInMb,
      'firewallMode': firewallMode,
      'maxRequestBodySize': ?maxRequestBodySize,
      'maxRequestBodySizeInKb': ?maxRequestBodySizeInKb,
      'requestBodyCheck': ?requestBodyCheck,
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory ApplicationGatewayWebApplicationFirewallConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayWebApplicationFirewallConfiguration(
      disabledRuleGroups: (() { final guardedValue = map['disabledRuleGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFirewallDisabledRuleGroup>(guardedValue, (value) => ApplicationGatewayFirewallDisabledRuleGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFirewallExclusion>(guardedValue, (value) => ApplicationGatewayFirewallExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileUploadLimitInMb: (() { final guardedValue = map['fileUploadLimitInMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      firewallMode: pulumi.Input.fromValue(map['firewallMode'] as String),
      maxRequestBodySize: (() { final guardedValue = map['maxRequestBodySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxRequestBodySizeInKb: (() { final guardedValue = map['maxRequestBodySizeInKb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      requestBodyCheck: (() { final guardedValue = map['requestBodyCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ruleSetType: pulumi.Input.fromValue(map['ruleSetType'] as String),
      ruleSetVersion: pulumi.Input.fromValue(map['ruleSetVersion'] as String),
    );
  }
}
