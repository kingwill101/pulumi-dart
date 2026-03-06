// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_custom_domain_route_config_route_rewrite_config_equal_rule.dart';
import 'v3_custom_domain_route_config_route_rewrite_config_regex_rule.dart';
import 'v3_custom_domain_route_config_route_rewrite_config_wildcard_rule.dart';

class V3CustomDomainRouteConfigRouteRewriteConfig {
  /// Exact Match Rule List See `equal_rules` below.
  final pulumi.Input<List<V3CustomDomainRouteConfigRouteRewriteConfigEqualRule>>? equalRules;
  /// Regular match rule list See `regex_rules` below.
  final pulumi.Input<List<V3CustomDomainRouteConfigRouteRewriteConfigRegexRule>>? regexRules;
  /// List of wildcard matching rules See `wildcard_rules` below.
  final pulumi.Input<List<V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule>>? wildcardRules;

  /// Creates a new [V3CustomDomainRouteConfigRouteRewriteConfig].
  /// [equalRules] Exact Match Rule List See `equal_rules` below.
  /// [regexRules] Regular match rule list See `regex_rules` below.
  /// [wildcardRules] List of wildcard matching rules See `wildcard_rules` below.
  const V3CustomDomainRouteConfigRouteRewriteConfig({
    this.equalRules,
    this.regexRules,
    this.wildcardRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'equalRules': ?pulumi.Input.mapOptionalInputValue<List<V3CustomDomainRouteConfigRouteRewriteConfigEqualRule>, List<Map<String, dynamic>>>(equalRules, (value) => pulumi.Input.encodeList<V3CustomDomainRouteConfigRouteRewriteConfigEqualRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regexRules': ?pulumi.Input.mapOptionalInputValue<List<V3CustomDomainRouteConfigRouteRewriteConfigRegexRule>, List<Map<String, dynamic>>>(regexRules, (value) => pulumi.Input.encodeList<V3CustomDomainRouteConfigRouteRewriteConfigRegexRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wildcardRules': ?pulumi.Input.mapOptionalInputValue<List<V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule>, List<Map<String, dynamic>>>(wildcardRules, (value) => pulumi.Input.encodeList<V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V3CustomDomainRouteConfigRouteRewriteConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainRouteConfigRouteRewriteConfig(
      equalRules: (() { final guardedValue = map['equalRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V3CustomDomainRouteConfigRouteRewriteConfigEqualRule>(guardedValue, (value) => V3CustomDomainRouteConfigRouteRewriteConfigEqualRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regexRules: (() { final guardedValue = map['regexRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V3CustomDomainRouteConfigRouteRewriteConfigRegexRule>(guardedValue, (value) => V3CustomDomainRouteConfigRouteRewriteConfigRegexRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wildcardRules: (() { final guardedValue = map['wildcardRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule>(guardedValue, (value) => V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

