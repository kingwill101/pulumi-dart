// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_policy_simulation_context.dart';

/// {@template pulumi_iam_get_principal_policy_simulation_get_principal_policy_simulation_args_doc}
/// Arguments for getPrincipalPolicySimulation.
/// {@endtemplate}
/// {@macro pulumi_iam_get_principal_policy_simulation_get_principal_policy_simulation_args_doc}
class GetPrincipalPolicySimulationArgs {
  /// A set of IAM action names to run simulations for. Each entry in this set adds an additional hypothetical request to the simulation.
  ///
  /// Action names consist of a service prefix and an action verb separated by a colon, such as `s3:GetObject`. Refer to [Actions, resources, and condition keys for AWS services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) to see the full set of possible IAM action names across all AWS services.
  final pulumi.Input<List<String>> actionNames;
  /// A set of additional principal policy documents to include in the simulation. The simulator will behave as if each of these policies were associated with the object specified in `policySourceArn`, allowing you to test the effect of hypothetical policies not yet created.
  final pulumi.Input<List<String>?>? additionalPoliciesJsons;
  /// The ARN of an user that will appear as the "caller" of the simulated requests. If you do not specify `callerArn` then the simulation will use the `policySourceArn` instead, if it contains a user ARN.
  final pulumi.Input<String?>? callerArn;
  /// Each `context` block defines an entry in the table of additional context keys in the simulated request.
  ///
  /// IAM uses context keys for both custom conditions and for interpolating dynamic request-specific values into policy values. If you use policies that include those features then you will need to provide suitable example values for those keys to achieve a realistic simulation.
  final pulumi.Input<List<GetPrincipalPolicySimulationContext>?>? contexts;
  /// A set of [permissions boundary policy documents](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) to include in the simulation.
  final pulumi.Input<List<String>?>? permissionsBoundaryPoliciesJsons;
  /// The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the IAM user, group, or role whose policies will be included in the simulation.
  ///
  /// You must closely match the form of the real service request you are simulating in order to achieve a realistic result. You can use the following additional arguments to specify other characteristics of the simulated requests:
  final pulumi.Input<String> policySourceArn;
  /// A set of ARNs of resources to include in the simulation.
  ///
  /// This argument is important for actions that have either required or optional resource types listed in [Actions, resources, and condition keys for AWS services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html), and you must provide ARNs that identify AWS objects of the appropriate types for the chosen actions.
  ///
  /// The policy simulator only automatically loads policies associated with the `policySourceArn`, so if your given resources have their own resource-level policy then you'll also need to provide that explicitly using the `resourcePolicyJson` argument to achieve a realistic simulation.
  final pulumi.Input<List<String>?>? resourceArns;
  /// Specifies a special simulation type to run. Some EC2 actions require special simulation behaviors and a particular set of resource ARNs to achieve a realistic result.
  ///
  /// For more details, see the `ResourceHandlingOption` request parameter for [the underlying `iam:SimulatePrincipalPolicy` action](https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html).
  final pulumi.Input<String?>? resourceHandlingOption;
  /// An AWS account ID to use for any resource ARN in `resourceArns` that doesn't include its own AWS account ID. If unspecified, the simulator will use the account ID from the `callerArn` argument as a placeholder.
  final pulumi.Input<String?>? resourceOwnerAccountId;
  /// An IAM policy document representing the resource-level policy of all of the resources specified in `resourceArns`.
  ///
  /// The policy simulator cannot automatically load policies that are associated with individual resources, as described in the documentation for `resourceArns` above.
  final pulumi.Input<String?>? resourcePolicyJson;

  /// Creates a new [GetPrincipalPolicySimulationArgs].
  /// [actionNames] A set of IAM action names to run simulations for. Each entry in this set adds an additional hypothetical request to the simulation.
  /// [additionalPoliciesJsons] A set of additional principal policy documents to include in the simulation. The simulator will behave as if each of these policies were associated with the object specified in `policySourceArn`, allowing you to test the effect of hypothetical policies not yet created.
  /// [callerArn] The ARN of an user that will appear as the "caller" of the simulated requests. If you do not specify `callerArn` then the simulation will use the `policySourceArn` instead, if it contains a user ARN.
  /// [contexts] Each `context` block defines an entry in the table of additional context keys in the simulated request.
  /// [permissionsBoundaryPoliciesJsons] A set of [permissions boundary policy documents](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) to include in the simulation.
  /// [policySourceArn] The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the IAM user, group, or role whose policies will be included in the simulation.
  /// [resourceArns] A set of ARNs of resources to include in the simulation.
  /// [resourceHandlingOption] Specifies a special simulation type to run. Some EC2 actions require special simulation behaviors and a particular set of resource ARNs to achieve a realistic result.
  /// [resourceOwnerAccountId] An AWS account ID to use for any resource ARN in `resourceArns` that doesn't include its own AWS account ID. If unspecified, the simulator will use the account ID from the `callerArn` argument as a placeholder.
  /// [resourcePolicyJson] An IAM policy document representing the resource-level policy of all of the resources specified in `resourceArns`.
  const GetPrincipalPolicySimulationArgs({
    required this.actionNames,
    this.additionalPoliciesJsons,
    this.callerArn,
    this.contexts,
    this.permissionsBoundaryPoliciesJsons,
    required this.policySourceArn,
    this.resourceArns,
    this.resourceHandlingOption,
    this.resourceOwnerAccountId,
    this.resourcePolicyJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionNames': actionNames,
      'additionalPoliciesJsons': ?additionalPoliciesJsons,
      'callerArn': ?callerArn,
      'contexts': ?pulumi.Input.mapOptionalInputValue<List<GetPrincipalPolicySimulationContext>, List<Map<String, dynamic>>>(contexts, (value) => pulumi.Input.encodeList<GetPrincipalPolicySimulationContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'permissionsBoundaryPoliciesJsons': ?permissionsBoundaryPoliciesJsons,
      'policySourceArn': policySourceArn,
      'resourceArns': ?resourceArns,
      'resourceHandlingOption': ?resourceHandlingOption,
      'resourceOwnerAccountId': ?resourceOwnerAccountId,
      'resourcePolicyJson': ?resourcePolicyJson,
    };
  }

  factory GetPrincipalPolicySimulationArgs.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationArgs(
      actionNames: pulumi.Input.fromValue((map['actionNames'] as List).cast<String>()),
      additionalPoliciesJsons: (() { final guardedValue = map['additionalPoliciesJsons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      callerArn: (() { final guardedValue = map['callerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contexts: (() { final guardedValue = map['contexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetPrincipalPolicySimulationContext>(guardedValue, (value) => GetPrincipalPolicySimulationContext.fromMap((value as Map).cast<String, dynamic>()))); })(),
      permissionsBoundaryPoliciesJsons: (() { final guardedValue = map['permissionsBoundaryPoliciesJsons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policySourceArn: pulumi.Input.fromValue(map['policySourceArn'] as String),
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceHandlingOption: (() { final guardedValue = map['resourceHandlingOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOwnerAccountId: (() { final guardedValue = map['resourceOwnerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePolicyJson: (() { final guardedValue = map['resourcePolicyJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
