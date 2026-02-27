// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../authz_policy_http_rule_to_not_operation/authz_policy_http_rule_to_not_operation.dart';
import '../authz_policy_http_rule_to_operation/authz_policy_http_rule_to_operation.dart';

class AuthzPolicyHttpRuleTo {
  /// Describes the negated properties of the targets of a request. Matches requests for operations that do not match the criteria specified in this field. At least one of operations or notOperations must be specified. Limited to 1 not_operation.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleToNotOperation>? notOperations;

  /// Describes properties of one or more targets of a request. At least one of operations or notOperations must be specified. Limited to 1 operation. A match occurs when ANY operation (in operations or notOperations) matches. Within an operation, the match follows AND semantics across fields and OR semantics within a field, i.e. a match occurs when ANY path matches AND ANY header matches and ANY method matches.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleToOperation>? operations;

  AuthzPolicyHttpRuleTo({
    this.notOperations,
    this.operations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notOperationsValue = notOperations;
    if (notOperationsValue != null) {
      map['notOperations'] = pulumi.Input.encodeList<
          AuthzPolicyHttpRuleToNotOperation,
          Map<String, dynamic>>(notOperationsValue, (value) => value.toMap());
    }
    final operationsValue = operations;
    if (operationsValue != null) {
      map['operations'] = pulumi.Input.encodeList<
          AuthzPolicyHttpRuleToOperation,
          Map<String, dynamic>>(operationsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthzPolicyHttpRuleTo.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleTo(
      notOperations: map['notOperations'] == null
          ? null
          : pulumi.Input.decodeList<AuthzPolicyHttpRuleToNotOperation>(
              map['notOperations'],
              (value) => AuthzPolicyHttpRuleToNotOperation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      operations: map['operations'] == null
          ? null
          : pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperation>(
              map['operations'],
              (value) => AuthzPolicyHttpRuleToOperation.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
