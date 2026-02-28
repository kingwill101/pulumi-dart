// ignore_for_file: unused_element, unnecessary_cast

import 'authz_policy_http_rule_from.dart';
import 'authz_policy_http_rule_to.dart';

class AuthzPolicyHttpRule {
  /// Describes properties of one or more sources of a request.
  /// Structure is documented below.
  final AuthzPolicyHttpRuleFrom? from;
  /// Describes properties of one or more targets of a request
  /// Structure is documented below.
  final AuthzPolicyHttpRuleTo? to;
  /// CEL expression that describes the conditions to be satisfied for the action. The result of the CEL expression is ANDed with the from and to. Refer to the CEL language reference for a list of available attributes.
  final String? when;

  /// Creates a new [AuthzPolicyHttpRule].
  /// [from] Describes properties of one or more sources of a request.
  /// [to] Describes properties of one or more targets of a request
  /// [when] CEL expression that describes the conditions to be satisfied for the action. The result of the CEL expression is ANDed with the from and to. Refer to the CEL language reference for a list of available attributes.
  AuthzPolicyHttpRule({
    this.from,
    this.to,
    this.when,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from == null ? null : from!.toMap(),
      'to': ?to == null ? null : to!.toMap(),
      'when': ?when,
    };
  }

  factory AuthzPolicyHttpRule.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRule(
      from: map['from'] == null ? null : AuthzPolicyHttpRuleFrom.fromMap((map['from'] as Map).cast<String, dynamic>()),
      to: map['to'] == null ? null : AuthzPolicyHttpRuleTo.fromMap((map['to'] as Map).cast<String, dynamic>()),
      when: map['when'] == null ? null : map['when'] as String,
    );
  }
}

