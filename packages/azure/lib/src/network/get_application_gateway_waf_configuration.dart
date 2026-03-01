// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_waf_configuration_disabled_rule_group.dart';
import 'get_application_gateway_waf_configuration_exclusion.dart';

class GetApplicationGatewayWafConfiguration {
  /// One or more `disabled_rule_group` blocks as defined below.
  final List<GetApplicationGatewayWafConfigurationDisabledRuleGroup> disabledRuleGroups;
  /// Is the Web Application Firewall enabled?
  final bool enabled;
  /// One or more `exclusion` blocks as defined below.
  final List<GetApplicationGatewayWafConfigurationExclusion> exclusions;
  /// The File Upload Limit in MB.
  final int fileUploadLimitMb;
  /// The Web Application Firewall Mode.
  final String firewallMode;
  /// The Maximum Request Body Size in KB.
  final int maxRequestBodySizeKb;
  /// Is Request Body Inspection enabled?
  final bool requestBodyCheck;
  /// The Type of the Rule Set used for this Web Application Firewall.
  final String ruleSetType;
  /// The Version of the Rule Set used for this Web Application Firewall.
  final String ruleSetVersion;

  /// Creates a new [GetApplicationGatewayWafConfiguration].
  /// [disabledRuleGroups] One or more `disabled_rule_group` blocks as defined below.
  /// [enabled] Is the Web Application Firewall enabled?
  /// [exclusions] One or more `exclusion` blocks as defined below.
  /// [fileUploadLimitMb] The File Upload Limit in MB.
  /// [firewallMode] The Web Application Firewall Mode.
  /// [maxRequestBodySizeKb] The Maximum Request Body Size in KB.
  /// [requestBodyCheck] Is Request Body Inspection enabled?
  /// [ruleSetType] The Type of the Rule Set used for this Web Application Firewall.
  /// [ruleSetVersion] The Version of the Rule Set used for this Web Application Firewall.
  GetApplicationGatewayWafConfiguration({
    required this.disabledRuleGroups,
    required this.enabled,
    required this.exclusions,
    required this.fileUploadLimitMb,
    required this.firewallMode,
    required this.maxRequestBodySizeKb,
    required this.requestBodyCheck,
    required this.ruleSetType,
    required this.ruleSetVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledRuleGroups': pulumi.Input.encodeList<GetApplicationGatewayWafConfigurationDisabledRuleGroup, Map<String, dynamic>>(disabledRuleGroups, (value) => value.toMap()),
      'enabled': enabled,
      'exclusions': pulumi.Input.encodeList<GetApplicationGatewayWafConfigurationExclusion, Map<String, dynamic>>(exclusions, (value) => value.toMap()),
      'fileUploadLimitMb': fileUploadLimitMb,
      'firewallMode': firewallMode,
      'maxRequestBodySizeKb': maxRequestBodySizeKb,
      'requestBodyCheck': requestBodyCheck,
      'ruleSetType': ruleSetType,
      'ruleSetVersion': ruleSetVersion,
    };
  }

  factory GetApplicationGatewayWafConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayWafConfiguration(
      disabledRuleGroups: pulumi.Input.decodeList<GetApplicationGatewayWafConfigurationDisabledRuleGroup>(map['disabledRuleGroups'], (value) => GetApplicationGatewayWafConfigurationDisabledRuleGroup.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      exclusions: pulumi.Input.decodeList<GetApplicationGatewayWafConfigurationExclusion>(map['exclusions'], (value) => GetApplicationGatewayWafConfigurationExclusion.fromMap((value as Map).cast<String, dynamic>())),
      fileUploadLimitMb: map['fileUploadLimitMb'] as int,
      firewallMode: map['firewallMode'] as String,
      maxRequestBodySizeKb: map['maxRequestBodySizeKb'] as int,
      requestBodyCheck: map['requestBodyCheck'] as bool,
      ruleSetType: map['ruleSetType'] as String,
      ruleSetVersion: map['ruleSetVersion'] as String,
    );
  }
}

