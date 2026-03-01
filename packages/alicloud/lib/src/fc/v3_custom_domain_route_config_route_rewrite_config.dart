// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_custom_domain_route_config_route_rewrite_config_equal_rule.dart';
import 'v3_custom_domain_route_config_route_rewrite_config_regex_rule.dart';
import 'v3_custom_domain_route_config_route_rewrite_config_wildcard_rule.dart';

class V3CustomDomainRouteConfigRouteRewriteConfig {
  /// Exact Match Rule List See `equal_rules` below.
  final List<V3CustomDomainRouteConfigRouteRewriteConfigEqualRule>? equalRules;
  /// Regular match rule list See `regex_rules` below.
  final List<V3CustomDomainRouteConfigRouteRewriteConfigRegexRule>? regexRules;
  /// List of wildcard matching rules See `wildcard_rules` below.
  final List<V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule>? wildcardRules;

  /// Creates a new [V3CustomDomainRouteConfigRouteRewriteConfig].
  /// [equalRules] Exact Match Rule List See `equal_rules` below.
  /// [regexRules] Regular match rule list See `regex_rules` below.
  /// [wildcardRules] List of wildcard matching rules See `wildcard_rules` below.
  V3CustomDomainRouteConfigRouteRewriteConfig({
    this.equalRules,
    this.regexRules,
    this.wildcardRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'equalRules': ?equalRules == null ? null : pulumi.Input.encodeList<V3CustomDomainRouteConfigRouteRewriteConfigEqualRule, Map<String, dynamic>>(equalRules!, (value) => value.toMap()),
      'regexRules': ?regexRules == null ? null : pulumi.Input.encodeList<V3CustomDomainRouteConfigRouteRewriteConfigRegexRule, Map<String, dynamic>>(regexRules!, (value) => value.toMap()),
      'wildcardRules': ?wildcardRules == null ? null : pulumi.Input.encodeList<V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule, Map<String, dynamic>>(wildcardRules!, (value) => value.toMap()),
    };
  }

  factory V3CustomDomainRouteConfigRouteRewriteConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainRouteConfigRouteRewriteConfig(
      equalRules: map['equalRules'] == null ? null : pulumi.Input.decodeList<V3CustomDomainRouteConfigRouteRewriteConfigEqualRule>(map['equalRules'], (value) => V3CustomDomainRouteConfigRouteRewriteConfigEqualRule.fromMap((value as Map).cast<String, dynamic>())),
      regexRules: map['regexRules'] == null ? null : pulumi.Input.decodeList<V3CustomDomainRouteConfigRouteRewriteConfigRegexRule>(map['regexRules'], (value) => V3CustomDomainRouteConfigRouteRewriteConfigRegexRule.fromMap((value as Map).cast<String, dynamic>())),
      wildcardRules: map['wildcardRules'] == null ? null : pulumi.Input.decodeList<V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule>(map['wildcardRules'], (value) => V3CustomDomainRouteConfigRouteRewriteConfigWildcardRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

