// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_rewrite_rule.dart';

/// Rewrite rule set of an application gateway.
class ApplicationGatewayRewriteRuleSet {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Name of the rewrite rule set that is unique within an Application Gateway.
  final pulumi.Input<String>? name;

  /// Rewrite rules in the rewrite rule set.
  final pulumi.Input<List<ApplicationGatewayRewriteRule>>? rewriteRules;

  /// Creates a new [ApplicationGatewayRewriteRuleSet].
  /// [id] Resource ID.
  /// [name] Name of the rewrite rule set that is unique within an Application Gateway.
  /// [rewriteRules] Rewrite rules in the rewrite rule set.
  ApplicationGatewayRewriteRuleSet({this.id, this.name, this.rewriteRules});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'rewriteRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGatewayRewriteRule>,
            List<Map<String, dynamic>>
          >(
            rewriteRules,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayRewriteRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ApplicationGatewayRewriteRuleSet.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRewriteRuleSet(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rewriteRules: (() {
        final guardedValue = map['rewriteRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationGatewayRewriteRule>(
            guardedValue,
            (value) => ApplicationGatewayRewriteRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
