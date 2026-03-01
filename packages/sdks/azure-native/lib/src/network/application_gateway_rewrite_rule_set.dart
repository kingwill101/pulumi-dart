// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule.dart';

/// Rewrite rule set of an application gateway.
class ApplicationGatewayRewriteRuleSet {
  /// Resource ID.
  final String? id;
  /// Name of the rewrite rule set that is unique within an Application Gateway.
  final String? name;
  /// Rewrite rules in the rewrite rule set.
  final List<ApplicationGatewayRewriteRule>? rewriteRules;

  /// Creates a new [ApplicationGatewayRewriteRuleSet].
  /// [id] Resource ID.
  /// [name] Name of the rewrite rule set that is unique within an Application Gateway.
  /// [rewriteRules] Rewrite rules in the rewrite rule set.
  ApplicationGatewayRewriteRuleSet({
    this.id,
    this.name,
    this.rewriteRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'rewriteRules': ?rewriteRules == null ? null : pulumi.Input.encodeList<ApplicationGatewayRewriteRule, Map<String, dynamic>>(rewriteRules!, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRewriteRuleSet.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSet(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      rewriteRules: map['rewriteRules'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayRewriteRule>(map['rewriteRules'], (value) => ApplicationGatewayRewriteRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

