// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_principal_policy_simulation_result_matched_statement/get_principal_policy_simulation_result_matched_statement.dart';

class GetPrincipalPolicySimulationResult {
  /// The name of the single IAM action used for this particular request.
  final String actionName;

  /// `true` if `decision` is "allowed", and `false` otherwise.
  final bool allowed;

  /// The raw decision determined from all of the policies in scope; either "allowed", "explicitDeny", or "implicitDeny".
  final String decision;

  /// A map of arbitrary metadata entries returned by the policy simulator for this request.
  final Map<String, String> decisionDetails;

  /// A nested set of objects describing which policies contained statements that were relevant to this simulation request. Each object has attributes `source_policy_id` and `source_policy_type` to identify one of the policies.
  final List<GetPrincipalPolicySimulationResultMatchedStatement>
      matchedStatements;

  /// A set of context keys (or condition keys) that were needed by some of the policies contributing to this result but not specified using a `context` block in the configuration. Missing or incorrect context keys will typically cause a simulated request to be disallowed.
  final List<String> missingContextKeys;

  /// ARN of the resource that was used for this particular request. When you specify multiple actions and multiple resource ARNs, that causes a separate policy request for each combination of unique action and resource.
  final String resourceArn;

  GetPrincipalPolicySimulationResult({
    required this.actionName,
    required this.allowed,
    required this.decision,
    required this.decisionDetails,
    required this.matchedStatements,
    required this.missingContextKeys,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionName'] = actionName;
    map['allowed'] = allowed;
    map['decision'] = decision;
    map['decisionDetails'] = decisionDetails;
    map['matchedStatements'] = Input.encodeList<
        GetPrincipalPolicySimulationResultMatchedStatement,
        Map<String, dynamic>>(matchedStatements, (value) => value.toMap());
    map['missingContextKeys'] = missingContextKeys;
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory GetPrincipalPolicySimulationResult.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationResult(
      actionName: map['actionName'] as String,
      allowed: map['allowed'] as bool,
      decision: map['decision'] as String,
      decisionDetails: (map['decisionDetails'] as Map).cast<String, String>(),
      matchedStatements:
          Input.decodeList<GetPrincipalPolicySimulationResultMatchedStatement>(
              map['matchedStatements'],
              (value) =>
                  GetPrincipalPolicySimulationResultMatchedStatement.fromMap(
                      (value as Map).cast<String, dynamic>())),
      missingContextKeys: (map['missingContextKeys'] as List).cast<String>(),
      resourceArn: map['resourceArn'] as String,
    );
  }
}
