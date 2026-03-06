// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_policy_simulation_result_matched_statement.dart';

class GetPrincipalPolicySimulationResult {
  /// The name of the single IAM action used for this particular request.
  final pulumi.Input<String> actionName;
  /// `true` if `decision` is "allowed", and `false` otherwise.
  final pulumi.Input<bool> allowed;
  /// The raw decision determined from all of the policies in scope; either "allowed", "explicitDeny", or "implicitDeny".
  final pulumi.Input<String> decision;
  /// A map of arbitrary metadata entries returned by the policy simulator for this request.
  final pulumi.Input<Map<String, String>> decisionDetails;
  /// A nested set of objects describing which policies contained statements that were relevant to this simulation request. Each object has attributes `source_policy_id` and `source_policy_type` to identify one of the policies.
  final pulumi.Input<List<GetPrincipalPolicySimulationResultMatchedStatement>> matchedStatements;
  /// A set of context keys (or condition keys) that were needed by some of the policies contributing to this result but not specified using a `context` block in the configuration. Missing or incorrect context keys will typically cause a simulated request to be disallowed.
  final pulumi.Input<List<String>> missingContextKeys;
  /// ARN of the resource that was used for this particular request. When you specify multiple actions and multiple resource ARNs, that causes a separate policy request for each combination of unique action and resource.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GetPrincipalPolicySimulationResult].
  /// [actionName] The name of the single IAM action used for this particular request.
  /// [allowed] `true` if `decision` is "allowed", and `false` otherwise.
  /// [decision] The raw decision determined from all of the policies in scope; either "allowed", "explicitDeny", or "implicitDeny".
  /// [decisionDetails] A map of arbitrary metadata entries returned by the policy simulator for this request.
  /// [matchedStatements] A nested set of objects describing which policies contained statements that were relevant to this simulation request. Each object has attributes `source_policy_id` and `source_policy_type` to identify one of the policies.
  /// [missingContextKeys] A set of context keys (or condition keys) that were needed by some of the policies contributing to this result but not specified using a `context` block in the configuration. Missing or incorrect context keys will typically cause a simulated request to be disallowed.
  /// [resourceArn] ARN of the resource that was used for this particular request. When you specify multiple actions and multiple resource ARNs, that causes a separate policy request for each combination of unique action and resource.
  const GetPrincipalPolicySimulationResult({
    required this.actionName,
    required this.allowed,
    required this.decision,
    required this.decisionDetails,
    required this.matchedStatements,
    required this.missingContextKeys,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionName': actionName,
      'allowed': allowed,
      'decision': decision,
      'decisionDetails': decisionDetails,
      'matchedStatements': pulumi.Input.mapInputValue<List<GetPrincipalPolicySimulationResultMatchedStatement>, List<Map<String, dynamic>>>(matchedStatements, (value) => pulumi.Input.encodeList<GetPrincipalPolicySimulationResultMatchedStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'missingContextKeys': missingContextKeys,
      'resourceArn': resourceArn,
    };
  }

  factory GetPrincipalPolicySimulationResult.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationResult(
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
      allowed: pulumi.Input.fromValue(map['allowed'] as bool),
      decision: pulumi.Input.fromValue(map['decision'] as String),
      decisionDetails: pulumi.Input.fromValue((map['decisionDetails'] as Map).cast<String, String>()),
      matchedStatements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrincipalPolicySimulationResultMatchedStatement>(map['matchedStatements']!, (value) => GetPrincipalPolicySimulationResultMatchedStatement.fromMap((value as Map).cast<String, dynamic>()))),
      missingContextKeys: pulumi.Input.fromValue((map['missingContextKeys'] as List).cast<String>()),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}

