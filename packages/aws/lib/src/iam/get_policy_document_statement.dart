// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement_condition.dart';
import 'get_policy_document_statement_not_principal.dart';
import 'get_policy_document_statement_principal.dart';

class GetPolicyDocumentStatement {
  /// List of actions that this statement either allows or denies. For example, `["ec2:RunInstances", "s3:*"]`.
  final List<String>? actions;

  /// Configuration block for a condition. Detailed below.
  final List<GetPolicyDocumentStatementCondition>? conditions;

  /// Whether this statement allows or denies the given actions. Valid values are `Allow` and `Deny`. Defaults to `Allow`.
  final String? effect;

  /// List of actions that this statement does *not* apply to. Use to apply a policy statement to all actions *except* those listed.
  final List<String>? notActions;

  /// Like `principals` except these are principals that the statement does *not* apply to.
  final List<GetPolicyDocumentStatementNotPrincipal>? notPrincipals;

  /// List of resource ARNs that this statement does *not* apply to. Use to apply a policy statement to all resources *except* those listed. Conflicts with `resources`.
  final List<String>? notResources;

  /// Configuration block for principals. Detailed below.
  final List<GetPolicyDocumentStatementPrincipal>? principals;

  /// List of resource ARNs that this statement applies to. This is required by AWS if used for an IAM policy. Conflicts with `not_resources`.
  final List<String>? resources;

  /// Sid (statement ID) is an identifier for a policy statement.
  final String? sid;

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
      'conditions': ?conditions == null
          ? null
          : pulumi.Input.encodeList<
              GetPolicyDocumentStatementCondition,
              Map<String, dynamic>
            >(conditions!, (value) => value.toMap()),
      'effect': ?effect,
      'notActions': ?notActions,
      'notPrincipals': ?notPrincipals == null
          ? null
          : pulumi.Input.encodeList<
              GetPolicyDocumentStatementNotPrincipal,
              Map<String, dynamic>
            >(notPrincipals!, (value) => value.toMap()),
      'notResources': ?notResources,
      'principals': ?principals == null
          ? null
          : pulumi.Input.encodeList<
              GetPolicyDocumentStatementPrincipal,
              Map<String, dynamic>
            >(principals!, (value) => value.toMap()),
      'resources': ?resources,
      'sid': ?sid,
    };
  }

  factory GetPolicyDocumentStatement.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatement(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<GetPolicyDocumentStatementCondition>(
              map['conditions'],
              (value) => GetPolicyDocumentStatementCondition.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      effect: map['effect'] == null ? null : map['effect'] as String,
      notActions: map['notActions'] == null
          ? null
          : (map['notActions'] as List).cast<String>(),
      notPrincipals: map['notPrincipals'] == null
          ? null
          : pulumi.Input.decodeList<GetPolicyDocumentStatementNotPrincipal>(
              map['notPrincipals'],
              (value) => GetPolicyDocumentStatementNotPrincipal.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      notResources: map['notResources'] == null
          ? null
          : (map['notResources'] as List).cast<String>(),
      principals: map['principals'] == null
          ? null
          : pulumi.Input.decodeList<GetPolicyDocumentStatementPrincipal>(
              map['principals'],
              (value) => GetPolicyDocumentStatementPrincipal.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      sid: map['sid'] == null ? null : map['sid'] as String,
    );
  }
}
