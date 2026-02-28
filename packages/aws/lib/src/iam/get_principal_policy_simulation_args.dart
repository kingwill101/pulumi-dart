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

  /// A set of additional principal policy documents to include in the simulation. The simulator will behave as if each of these policies were associated with the object specified in `policy_source_arn`, allowing you to test the effect of hypothetical policies not yet created.
  final pulumi.Input<List<String>>? additionalPoliciesJsons;

  /// The ARN of an user that will appear as the "caller" of the simulated requests. If you do not specify `caller_arn` then the simulation will use the `policy_source_arn` instead, if it contains a user ARN.
  final pulumi.Input<String>? callerArn;

  /// Each `context` block defines an entry in the table of additional context keys in the simulated request.
  ///
  /// IAM uses context keys for both custom conditions and for interpolating dynamic request-specific values into policy values. If you use policies that include those features then you will need to provide suitable example values for those keys to achieve a realistic simulation.
  final pulumi.Input<List<GetPrincipalPolicySimulationContext>>? contexts;

  /// A set of [permissions boundary policy documents](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) to include in the simulation.
  final pulumi.Input<List<String>>? permissionsBoundaryPoliciesJsons;

  /// The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the IAM user, group, or role whose policies will be included in the simulation.
  ///
  /// You must closely match the form of the real service request you are simulating in order to achieve a realistic result. You can use the following additional arguments to specify other characteristics of the simulated requests:
  final pulumi.Input<String> policySourceArn;

  /// A set of ARNs of resources to include in the simulation.
  ///
  /// This argument is important for actions that have either required or optional resource types listed in [Actions, resources, and condition keys for AWS services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html), and you must provide ARNs that identify AWS objects of the appropriate types for the chosen actions.
  ///
  /// The policy simulator only automatically loads policies associated with the `policy_source_arn`, so if your given resources have their own resource-level policy then you'll also need to provide that explicitly using the `resource_policy_json` argument to achieve a realistic simulation.
  final pulumi.Input<List<String>>? resourceArns;

  /// Specifies a special simulation type to run. Some EC2 actions require special simulation behaviors and a particular set of resource ARNs to achieve a realistic result.
  ///
  /// For more details, see the `ResourceHandlingOption` request parameter for [the underlying `iam:SimulatePrincipalPolicy` action](https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html).
  final pulumi.Input<String>? resourceHandlingOption;

  /// An AWS account ID to use for any resource ARN in `resource_arns` that doesn't include its own AWS account ID. If unspecified, the simulator will use the account ID from the `caller_arn` argument as a placeholder.
  final pulumi.Input<String>? resourceOwnerAccountId;

  /// An IAM policy document representing the resource-level policy of all of the resources specified in `resource_arns`.
  ///
  /// The policy simulator cannot automatically load policies that are associated with individual resources, as described in the documentation for `resource_arns` above.
  final pulumi.Input<String>? resourcePolicyJson;

  /// Creates a new [GetPrincipalPolicySimulationArgs].
  /// [actionNames] A set of IAM action names to run simulations for. Each entry in this set adds an additional hypothetical request to the simulation.
  /// [additionalPoliciesJsons] A set of additional principal policy documents to include in the simulation. The simulator will behave as if each of these policies were associated with the object specified in `policy_source_arn`, allowing you to test the effect of hypothetical policies not yet created.
  /// [callerArn] The ARN of an user that will appear as the "caller" of the simulated requests. If you do not specify `caller_arn` then the simulation will use the `policy_source_arn` instead, if it contains a user ARN.
  /// [contexts] Each `context` block defines an entry in the table of additional context keys in the simulated request.
  /// [permissionsBoundaryPoliciesJsons] A set of [permissions boundary policy documents](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) to include in the simulation.
  /// [policySourceArn] The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the IAM user, group, or role whose policies will be included in the simulation.
  /// [resourceArns] A set of ARNs of resources to include in the simulation.
  /// [resourceHandlingOption] Specifies a special simulation type to run. Some EC2 actions require special simulation behaviors and a particular set of resource ARNs to achieve a realistic result.
  /// [resourceOwnerAccountId] An AWS account ID to use for any resource ARN in `resource_arns` that doesn't include its own AWS account ID. If unspecified, the simulator will use the account ID from the `caller_arn` argument as a placeholder.
  /// [resourcePolicyJson] An IAM policy document representing the resource-level policy of all of the resources specified in `resource_arns`.
  GetPrincipalPolicySimulationArgs({
    required List<String> actionNames,
    List<String>? additionalPoliciesJsons,
    String? callerArn,
    List<GetPrincipalPolicySimulationContext>? contexts,
    List<String>? permissionsBoundaryPoliciesJsons,
    required String policySourceArn,
    List<String>? resourceArns,
    String? resourceHandlingOption,
    String? resourceOwnerAccountId,
    String? resourcePolicyJson,
  })  : actionNames = pulumi.Input.asInput<List<String>>(actionNames),
        additionalPoliciesJsons =
            pulumi.Input.asOptionalInput<List<String>>(additionalPoliciesJsons),
        callerArn = pulumi.Input.asOptionalInput<String>(callerArn),
        contexts = pulumi.Input.asOptionalInput<
            List<GetPrincipalPolicySimulationContext>>(contexts),
        permissionsBoundaryPoliciesJsons =
            pulumi.Input.asOptionalInput<List<String>>(
                permissionsBoundaryPoliciesJsons),
        policySourceArn = pulumi.Input.asInput<String>(policySourceArn),
        resourceArns = pulumi.Input.asOptionalInput<List<String>>(resourceArns),
        resourceHandlingOption =
            pulumi.Input.asOptionalInput<String>(resourceHandlingOption),
        resourceOwnerAccountId =
            pulumi.Input.asOptionalInput<String>(resourceOwnerAccountId),
        resourcePolicyJson =
            pulumi.Input.asOptionalInput<String>(resourcePolicyJson);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionNames'] = actionNames;
    final additionalPoliciesJsonsValue = additionalPoliciesJsons;
    if (additionalPoliciesJsonsValue != null) {
      map['additionalPoliciesJsons'] = additionalPoliciesJsonsValue;
    }
    final callerArnValue = callerArn;
    if (callerArnValue != null) {
      map['callerArn'] = callerArnValue;
    }
    final contextsValue = contexts;
    if (contextsValue != null) {
      map['contexts'] = pulumi.Input.mapOptionalInputValue<
              List<GetPrincipalPolicySimulationContext>,
              List<Map<String, dynamic>>>(
          contextsValue,
          (value) => pulumi.Input.encodeList<
              GetPrincipalPolicySimulationContext,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final permissionsBoundaryPoliciesJsonsValue =
        permissionsBoundaryPoliciesJsons;
    if (permissionsBoundaryPoliciesJsonsValue != null) {
      map['permissionsBoundaryPoliciesJsons'] =
          permissionsBoundaryPoliciesJsonsValue;
    }
    map['policySourceArn'] = policySourceArn;
    final resourceArnsValue = resourceArns;
    if (resourceArnsValue != null) {
      map['resourceArns'] = resourceArnsValue;
    }
    final resourceHandlingOptionValue = resourceHandlingOption;
    if (resourceHandlingOptionValue != null) {
      map['resourceHandlingOption'] = resourceHandlingOptionValue;
    }
    final resourceOwnerAccountIdValue = resourceOwnerAccountId;
    if (resourceOwnerAccountIdValue != null) {
      map['resourceOwnerAccountId'] = resourceOwnerAccountIdValue;
    }
    final resourcePolicyJsonValue = resourcePolicyJson;
    if (resourcePolicyJsonValue != null) {
      map['resourcePolicyJson'] = resourcePolicyJsonValue;
    }
    return map;
  }

  factory GetPrincipalPolicySimulationArgs.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationArgs(
      actionNames: (map['actionNames'] as List).cast<String>(),
      additionalPoliciesJsons: map['additionalPoliciesJsons'] == null
          ? null
          : (map['additionalPoliciesJsons'] as List).cast<String>(),
      callerArn: map['callerArn'] == null ? null : map['callerArn'] as String,
      contexts: map['contexts'] == null
          ? null
          : pulumi.Input.decodeList<GetPrincipalPolicySimulationContext>(
              map['contexts'],
              (value) => GetPrincipalPolicySimulationContext.fromMap(
                  (value as Map).cast<String, dynamic>())),
      permissionsBoundaryPoliciesJsons:
          map['permissionsBoundaryPoliciesJsons'] == null
              ? null
              : (map['permissionsBoundaryPoliciesJsons'] as List)
                  .cast<String>(),
      policySourceArn: map['policySourceArn'] as String,
      resourceArns: map['resourceArns'] == null
          ? null
          : (map['resourceArns'] as List).cast<String>(),
      resourceHandlingOption: map['resourceHandlingOption'] == null
          ? null
          : map['resourceHandlingOption'] as String,
      resourceOwnerAccountId: map['resourceOwnerAccountId'] == null
          ? null
          : map['resourceOwnerAccountId'] as String,
      resourcePolicyJson: map['resourcePolicyJson'] == null
          ? null
          : map['resourcePolicyJson'] as String,
    );
  }
}
