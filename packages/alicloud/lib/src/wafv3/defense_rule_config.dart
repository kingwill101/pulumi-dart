// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defense_rule_config_account_identifier.dart';
import 'defense_rule_config_condition.dart';
import 'defense_rule_config_gray_config.dart';
import 'defense_rule_config_rate_limit.dart';
import 'defense_rule_config_time_config.dart';
import 'defense_rule_config_waf_base_config.dart';

class DefenseRuleConfig {
  /// The regions outside China from which you want to block requests. Separate multiple region codes with commas (,). You can call the DescribeIpAbroadCountryInfos operation to query the countries and regions outside China that can be blocked.
  final String? abroadRegions;
  /// The policies for account extraction. Up to five policies are supported. Each policy is a JSON string. For more information, see accountIdentifiers description. See `account_identifiers` below.
  final List<DefenseRuleConfigAccountIdentifier>? accountIdentifiers;
  /// Whether the new Web core protection rules are automatically updated. Values:
  final bool? autoUpdate;
  /// The list of regular rule IDs that are not detected. The value is in the ["XX1", "XX2",...] format. This parameter is required only when the module to which the whitelist applies is set to specific regular rules in basic protection (BypassTags is set to regular_rule).
  final List<String>? bypassRegularRules;
  /// The regular rule type is not detected. This parameter is configured only when the whitelist module is configured as the Web application regular type (the value of the BypassTags parameter is regular_type). Value:
  /// - sqli: Indicates SQL injection.
  /// - xss: Indicates cross-site scripting (XSS).
  /// - cmdi: Indicates OS command injection.
  /// - expression_injection: Indicates expression injection.
  /// - java_deserialization: indicates Java deserialization.
  /// - dot_net_deserialization: Represents. net deserialization.
  /// - php_deserialization: indicates PHP deserialization.
  /// - code_exec: Indicates code execution.
  /// - ssrf: indicates SSRF (server-side request forgery).
  /// - path_traversal: indicates a Path Traversal.
  /// - arbitrary_file_uploading: Indicates to upload any file.
  /// - webshell: Represents a webshell.
  /// - rfilei: Indicates the remote file contains (RFI).
  /// - lfilei: Indicates that the local file contains (LFI).
  /// - protocol_violation: indicates a protocol violation.
  /// - scanner_behavior: Indicates scanner behavior.
  /// - logic_flaw: Indicates a business logic defect.
  /// - arbitrary_file_reading: Indicates arbitrary file reading.
  /// - arbitrary_file_download: Indicates an arbitrary file download.
  /// - xxe: Indicates external entity injection.
  /// - csrf: indicates cross-site request forgery.
  /// - crlf: indicates CRLF.
  /// - other: indicates other.
  final List<String>? bypassRegularTypes;
  /// The modules to which the whitelist applies. The value is in the ["XX1", "XX2",...] format. Valid values:
  /// - waf: indicates all modules.
  /// - customrule: indicates custom rules.
  /// - blacklist: indicates IP blacklist.
  /// - antiscan: indicates scan protection.
  /// - regular: indicates basic protection rules.
  /// - regular_rule: indicates specific regular rules in basic protection.
  /// - regular_type: indicates specific regular rule types in basic protection.
  /// - major_protection: indicates major event support protection.
  /// - cc: indicates CC protection.
  /// - region_block: indicates Location Blacklist.
  /// - antibot_scene: indicates BOT scenario protection.
  /// - dlp: indicates information leakage prevention.
  /// - tamperproof: indicates web tamper-proofing.
  /// - spike_throttle: indicates peak traffic throttling.
  final List<String>? bypassTags;
  /// Set the effective range of the speed limit. This information is configured only when ccStatus is set to 1. Value:
  /// - service: indicates that the effective object is a protected object.
  /// - rule: indicates that the effective object is a single rule.
  final String? ccEffect;
  /// Whether to open the speed limit. Value:
  /// - 0: indicates that the speed limit is off.
  /// - 1: Indicates that the speed limit is on.
  final int? ccStatus;
  /// The regions in China from which you want to block requests. If you specify "CN", requests from the Chinese mainland (excluding Hong Kong, Macao, and Taiwan) are blocked. Separate multiple regions with commas (,). For more information about region codes, see Description of region codes in China.
  final String? cnRegions;
  /// The type to enable decoding. Value:
  final List<String>? codecLists;
  /// The traffic characteristics of ACL, which are described in JSON format. You can enter up to five matching conditions. For specific configuration information, see detailed configuration of conditions. See `conditions` below.
  final List<DefenseRuleConfigCondition>? conditions;
  /// The canary release configuration for the rule. The value is a JSON. This parameter is required only when you set `GrayStatus` to 1. See `gray_config` below.
  final DefenseRuleConfigGrayConfig? grayConfig;
  /// Specifies whether to enable canary release for the rule. Valid values:
  /// - 0 (default): disables canary release.
  /// - 1: enables canary release.
  final int? grayStatus;
  /// The HTTP flood protection mode. Valid values:
  /// - 0 (default): indicates normal protection.
  /// - 1: indicates emergency protection.
  final int? mode;
  /// The protocol type of the cached page address. Valid values: http, https.
  final String? protocol;
  /// The detailed speed limit configuration, which is described in the JSON string format. This information is configured only when CcStatus is set to 1. For specific configuration information, see detailed configuration of Ratelimit. See `rate_limit` below.
  final DefenseRuleConfigRateLimit? rateLimit;
  /// The IP addresses that you want to add to the blacklist. Specify the value of this parameter in the ["ip1","ip2",...] format.
  final List<String>? remoteAddrs;
  /// Web core protection rule action. Valid values:
  final String? ruleAction;
  /// The throttling threshold. Valid values:
  /// - The QPS throttling threshold ranges from 1 to 5000000. If you select QPS throttling (such as 500 QPS), traffic that meets the throttling conditions and exceeds 500 QPS will be blocked.
  /// - The percentage throttling threshold ranges from 1 to 99. If you select percentage throttling (such as 80%), only 80% of the traffic that meets the throttling conditions will be allowed.
  final int? throttleThrehold;
  /// The throttling method. Valid values:
  /// - qps: indicates throttling based on queries per second (QPS).
  /// - ratio (default): indicates throttling based on percentage.
  final String? throttleType;
  /// The scheduled rule configuration. The value is a JSON.  See `time_config` below.
  final DefenseRuleConfigTimeConfig? timeConfig;
  /// The User-Agent string that is allowed for access to the address.
  final String? ua;
  /// The address of the cached page.
  final String? url;
  /// The configuration of the Web core protection rules to be modified. See `waf_base_config` below.
  final List<DefenseRuleConfigWafBaseConfig>? wafBaseConfigs;

  /// Creates a new [DefenseRuleConfig].
  /// [abroadRegions] The regions outside China from which you want to block requests. Separate multiple region codes with commas (,). You can call the DescribeIpAbroadCountryInfos operation to query the countries and regions outside China that can be blocked.
  /// [accountIdentifiers] The policies for account extraction. Up to five policies are supported. Each policy is a JSON string. For more information, see accountIdentifiers description. See `account_identifiers` below.
  /// [autoUpdate] Whether the new Web core protection rules are automatically updated. Values:
  /// [bypassRegularRules] The list of regular rule IDs that are not detected. The value is in the ["XX1", "XX2",...] format. This parameter is required only when the module to which the whitelist applies is set to specific regular rules in basic protection (BypassTags is set to regular_rule).
  /// [bypassRegularTypes] The regular rule type is not detected. This parameter is configured only when the whitelist module is configured as the Web application regular type (the value of the BypassTags parameter is regular_type). Value:
  /// [bypassTags] The modules to which the whitelist applies. The value is in the ["XX1", "XX2",...] format. Valid values:
  /// [ccEffect] Set the effective range of the speed limit. This information is configured only when ccStatus is set to 1. Value:
  /// [ccStatus] Whether to open the speed limit. Value:
  /// [cnRegions] The regions in China from which you want to block requests. If you specify "CN", requests from the Chinese mainland (excluding Hong Kong, Macao, and Taiwan) are blocked. Separate multiple regions with commas (,). For more information about region codes, see Description of region codes in China.
  /// [codecLists] The type to enable decoding. Value:
  /// [conditions] The traffic characteristics of ACL, which are described in JSON format. You can enter up to five matching conditions. For specific configuration information, see detailed configuration of conditions. See `conditions` below.
  /// [grayConfig] The canary release configuration for the rule. The value is a JSON. This parameter is required only when you set `GrayStatus` to 1. See `gray_config` below.
  /// [grayStatus] Specifies whether to enable canary release for the rule. Valid values:
  /// [mode] The HTTP flood protection mode. Valid values:
  /// [protocol] The protocol type of the cached page address. Valid values: http, https.
  /// [rateLimit] The detailed speed limit configuration, which is described in the JSON string format. This information is configured only when CcStatus is set to 1. For specific configuration information, see detailed configuration of Ratelimit. See `rate_limit` below.
  /// [remoteAddrs] The IP addresses that you want to add to the blacklist. Specify the value of this parameter in the ["ip1","ip2",...] format.
  /// [ruleAction] Web core protection rule action. Valid values:
  /// [throttleThrehold] The throttling threshold. Valid values:
  /// [throttleType] The throttling method. Valid values:
  /// [timeConfig] The scheduled rule configuration. The value is a JSON.  See `time_config` below.
  /// [ua] The User-Agent string that is allowed for access to the address.
  /// [url] The address of the cached page.
  /// [wafBaseConfigs] The configuration of the Web core protection rules to be modified. See `waf_base_config` below.
  DefenseRuleConfig({
    this.abroadRegions,
    this.accountIdentifiers,
    this.autoUpdate,
    this.bypassRegularRules,
    this.bypassRegularTypes,
    this.bypassTags,
    this.ccEffect,
    this.ccStatus,
    this.cnRegions,
    this.codecLists,
    this.conditions,
    this.grayConfig,
    this.grayStatus,
    this.mode,
    this.protocol,
    this.rateLimit,
    this.remoteAddrs,
    this.ruleAction,
    this.throttleThrehold,
    this.throttleType,
    this.timeConfig,
    this.ua,
    this.url,
    this.wafBaseConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abroadRegions': ?abroadRegions,
      'accountIdentifiers': ?accountIdentifiers == null ? null : pulumi.Input.encodeList<DefenseRuleConfigAccountIdentifier, Map<String, dynamic>>(accountIdentifiers!, (value) => value.toMap()),
      'autoUpdate': ?autoUpdate,
      'bypassRegularRules': ?bypassRegularRules,
      'bypassRegularTypes': ?bypassRegularTypes,
      'bypassTags': ?bypassTags,
      'ccEffect': ?ccEffect,
      'ccStatus': ?ccStatus,
      'cnRegions': ?cnRegions,
      'codecLists': ?codecLists,
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<DefenseRuleConfigCondition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'grayConfig': ?grayConfig == null ? null : grayConfig!.toMap(),
      'grayStatus': ?grayStatus,
      'mode': ?mode,
      'protocol': ?protocol,
      'rateLimit': ?rateLimit == null ? null : rateLimit!.toMap(),
      'remoteAddrs': ?remoteAddrs,
      'ruleAction': ?ruleAction,
      'throttleThrehold': ?throttleThrehold,
      'throttleType': ?throttleType,
      'timeConfig': ?timeConfig == null ? null : timeConfig!.toMap(),
      'ua': ?ua,
      'url': ?url,
      'wafBaseConfigs': ?wafBaseConfigs == null ? null : pulumi.Input.encodeList<DefenseRuleConfigWafBaseConfig, Map<String, dynamic>>(wafBaseConfigs!, (value) => value.toMap()),
    };
  }

  factory DefenseRuleConfig.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfig(
      abroadRegions: map['abroadRegions'] == null ? null : map['abroadRegions'] as String,
      accountIdentifiers: map['accountIdentifiers'] == null ? null : pulumi.Input.decodeList<DefenseRuleConfigAccountIdentifier>(map['accountIdentifiers'], (value) => DefenseRuleConfigAccountIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      autoUpdate: map['autoUpdate'] == null ? null : map['autoUpdate'] as bool,
      bypassRegularRules: map['bypassRegularRules'] == null ? null : (map['bypassRegularRules'] as List).cast<String>(),
      bypassRegularTypes: map['bypassRegularTypes'] == null ? null : (map['bypassRegularTypes'] as List).cast<String>(),
      bypassTags: map['bypassTags'] == null ? null : (map['bypassTags'] as List).cast<String>(),
      ccEffect: map['ccEffect'] == null ? null : map['ccEffect'] as String,
      ccStatus: map['ccStatus'] == null ? null : map['ccStatus'] as int,
      cnRegions: map['cnRegions'] == null ? null : map['cnRegions'] as String,
      codecLists: map['codecLists'] == null ? null : (map['codecLists'] as List).cast<String>(),
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<DefenseRuleConfigCondition>(map['conditions'], (value) => DefenseRuleConfigCondition.fromMap((value as Map).cast<String, dynamic>())),
      grayConfig: map['grayConfig'] == null ? null : DefenseRuleConfigGrayConfig.fromMap((map['grayConfig'] as Map).cast<String, dynamic>()),
      grayStatus: map['grayStatus'] == null ? null : map['grayStatus'] as int,
      mode: map['mode'] == null ? null : map['mode'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      rateLimit: map['rateLimit'] == null ? null : DefenseRuleConfigRateLimit.fromMap((map['rateLimit'] as Map).cast<String, dynamic>()),
      remoteAddrs: map['remoteAddrs'] == null ? null : (map['remoteAddrs'] as List).cast<String>(),
      ruleAction: map['ruleAction'] == null ? null : map['ruleAction'] as String,
      throttleThrehold: map['throttleThrehold'] == null ? null : map['throttleThrehold'] as int,
      throttleType: map['throttleType'] == null ? null : map['throttleType'] as String,
      timeConfig: map['timeConfig'] == null ? null : DefenseRuleConfigTimeConfig.fromMap((map['timeConfig'] as Map).cast<String, dynamic>()),
      ua: map['ua'] == null ? null : map['ua'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      wafBaseConfigs: map['wafBaseConfigs'] == null ? null : pulumi.Input.decodeList<DefenseRuleConfigWafBaseConfig>(map['wafBaseConfigs'], (value) => DefenseRuleConfigWafBaseConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

