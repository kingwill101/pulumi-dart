// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement_condition.dart';
import 'get_policy_document_statement_principal.dart';

class GetPolicyDocumentStatement {
  /// Action of the RAM policy document. If you want to create a RAM role policy document, it must be `["sts:AssumeRole"]`.
  final pulumi.Input<List<String>> actions;
  /// Specifies the condition that are required for a policy to take effect. See `condition` below.
  final pulumi.Input<List<GetPolicyDocumentStatementCondition>>? conditions;
  /// This parameter indicates whether or not the `action` is allowed. Valid values are `Allow` and `Deny`. Default value is `Allow`. If you want to create a RAM role policy document, it must be `Allow`.
  final pulumi.Input<String>? effect;
  /// Principal of the RAM policy document. If you want to create a RAM role policy document, it must be set. See `principal` below.
  final pulumi.Input<List<GetPolicyDocumentStatementPrincipal>>? principals;
  /// List of specific objects which will be authorized. If you want to create a RAM policy document, it must be set.
  final pulumi.Input<List<String>>? resources;

  /// Creates a new [GetPolicyDocumentStatement].
  /// [actions] Action of the RAM policy document. If you want to create a RAM role policy document, it must be `["sts:AssumeRole"]`.
  /// [conditions] Specifies the condition that are required for a policy to take effect. See `condition` below.
  /// [effect] This parameter indicates whether or not the `action` is allowed. Valid values are `Allow` and `Deny`. Default value is `Allow`. If you want to create a RAM role policy document, it must be `Allow`.
  /// [principals] Principal of the RAM policy document. If you want to create a RAM role policy document, it must be set. See `principal` below.
  /// [resources] List of specific objects which will be authorized. If you want to create a RAM policy document, it must be set.
  GetPolicyDocumentStatement({
    required this.actions,
    this.conditions,
    this.effect,
    this.principals,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyDocumentStatementCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<GetPolicyDocumentStatementCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effect': ?effect,
      'principals': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyDocumentStatementPrincipal>, List<Map<String, dynamic>>>(principals, (value) => pulumi.Input.encodeList<GetPolicyDocumentStatementPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resources': ?resources,
    };
  }

  factory GetPolicyDocumentStatement.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatement(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyDocumentStatementCondition>(guardedValue, (value) => GetPolicyDocumentStatementCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principals: (() { final guardedValue = map['principals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPolicyDocumentStatementPrincipal>(guardedValue, (value) => GetPolicyDocumentStatementPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

