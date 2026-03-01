// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_gateway_rewrite_rule_set_rewrite_rule.dart';

class GetApplicationGatewayRewriteRuleSet {
  /// The ID of the Rewrite Rule Set
  final String id;
  /// The name of this Application Gateway.
  final String name;
  /// One or more `rewrite_rule` blocks as defined below.
  final List<GetApplicationGatewayRewriteRuleSetRewriteRule> rewriteRules;

  /// Creates a new [GetApplicationGatewayRewriteRuleSet].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [rewriteRules] One or more `rewrite_rule` blocks as defined below.
  GetApplicationGatewayRewriteRuleSet({
    required this.id,
    required this.name,
    required this.rewriteRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'rewriteRules': pulumi.Input.encodeList<GetApplicationGatewayRewriteRuleSetRewriteRule, Map<String, dynamic>>(rewriteRules, (value) => value.toMap()),
    };
  }

  factory GetApplicationGatewayRewriteRuleSet.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayRewriteRuleSet(
      id: map['id'] as String,
      name: map['name'] as String,
      rewriteRules: pulumi.Input.decodeList<GetApplicationGatewayRewriteRuleSetRewriteRule>(map['rewriteRules'], (value) => GetApplicationGatewayRewriteRuleSetRewriteRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

