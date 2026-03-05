// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement_condition.dart';
import 'get_policy_document_statement_not_principal.dart';
import 'get_policy_document_statement_principal.dart';

class GetPolicyDocumentStatement {
  /// List of actions that this statement either allows or denies. For example, `["ec2:RunInstances", "s3:*"]`.
  final pulumi.Input<List<String>>? actions;
  /// Configuration block for a condition. Detailed below.
  final pulumi.Input<List<GetPolicyDocumentStatementCondition>>? conditions;
  /// Whether this statement allows or denies the given actions. Valid values are `Allow` and `Deny`. Defaults to `Allow`.
  final pulumi.Input<String>? effect;
  /// List of actions that this statement does *not* apply to. Use to apply a policy statement to all actions *except* those listed.
  final pulumi.Input<List<String>>? notActions;
  /// Like `principals` except these are principals that the statement does *not* apply to.
  final pulumi.Input<List<GetPolicyDocumentStatementNotPrincipal>>? notPrincipals;
  /// List of resource ARNs that this statement does *not* apply to. Use to apply a policy statement to all resources *except* those listed. Conflicts with `resources`.
  final pulumi.Input<List<String>>? notResources;
  /// Configuration block for principals. Detailed below.
  final pulumi.Input<List<GetPolicyDocumentStatementPrincipal>>? principals;
  /// List of resource ARNs that this statement applies to. This is required by AWS if used for an IAM policy. Conflicts with `not_resources`.
  final pulumi.Input<List<String>>? resources;
  /// Sid (statement ID) is an identifier for a policy statement.
  final pulumi.Input<String>? sid;

  /// Creates a new [GetPolicyDocumentStatement].
  /// [actions] List of actions that this statement either allows or denies. For example, `["ec2:RunInstances", "s3:*"]`.
  /// [conditions] Configuration block for a condition. Detailed below.
  /// [effect] Whether this statement allows or denies the given actions. Valid values are `Allow` and `Deny`. Defaults to `Allow`.
  /// [notActions] List of actions that this statement does *not* apply to. Use to apply a policy statement to all actions *except* those listed.
  /// [notPrincipals] Like `principals` except these are principals that the statement does *not* apply to.
  /// [notResources] List of resource ARNs that this statement does *not* apply to. Use to apply a policy statement to all resources *except* those listed. Conflicts with `resources`.
  /// [principals] Configuration block for principals. Detailed below.
  /// [resources] List of resource ARNs that this statement applies to. This is required by AWS if used for an IAM policy. Conflicts with `not_resources`.
  /// [sid] Sid (statement ID) is an identifier for a policy statement.
  GetPolicyDocumentStatement({
    this.actions,
    this.conditions,
    this.effect,
    this.notActions,
    this.notPrincipals,
    this.notResources,
    this.principals,
    this.resources,
    this.sid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyDocumentStatementCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetPolicyDocumentStatementCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effect': ?effect,
      'notActions': ?notActions,
      'notPrincipals': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyDocumentStatementNotPrincipal>, List<Map<String, dynamic>>>(notPrincipals, (value) => pulumi.Input.encodeList<GetPolicyDocumentStatementNotPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notResources': ?notResources,
      'principals': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyDocumentStatementPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<GetPolicyDocumentStatementPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?resources,
      'sid': ?sid,
    };
  }

  factory GetPolicyDocumentStatement.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatement(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyDocumentStatementCondition>(guardedValue, (value) => GetPolicyDocumentStatementCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notActions: (() { final guardedValue = map['notActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notPrincipals: (() { final guardedValue = map['notPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyDocumentStatementNotPrincipal>(guardedValue, (value) => GetPolicyDocumentStatementNotPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notResources: (() { final guardedValue = map['notResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyDocumentStatementPrincipal>(guardedValue, (value) => GetPolicyDocumentStatementPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

