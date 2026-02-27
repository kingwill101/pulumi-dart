// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_principal_policy_simulation_context/get_principal_policy_simulation_context.dart';

/// Arguments for getPrincipalPolicySimulation.
class GetPrincipalPolicySimulationArgs {
  /// A set of IAM action names to run simulations for. Each entry in this set adds an additional hypothetical request to the simulation.
  ///
  /// Action names consist of a service prefix and an action verb separated by a colon, such as `s3:GetObject`. Refer to [Actions, resources, and condition keys for AWS services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) to see the full set of possible IAM action names across all AWS services.
  final Input<List<String>> actionNames;

  /// A set of additional principal policy documents to include in the simulation. The simulator will behave as if each of these policies were associated with the object specified in `policy_source_arn`, allowing you to test the effect of hypothetical policies not yet created.
  final Input<List<String>>? additionalPoliciesJsons;

  /// The ARN of an user that will appear as the "caller" of the simulated requests. If you do not specify `caller_arn` then the simulation will use the `policy_source_arn` instead, if it contains a user ARN.
  final Input<String>? callerArn;

  /// Each `context` block defines an entry in the table of additional context keys in the simulated request.
  ///
  /// IAM uses context keys for both custom conditions and for interpolating dynamic request-specific values into policy values. If you use policies that include those features then you will need to provide suitable example values for those keys to achieve a realistic simulation.
  final Input<List<GetPrincipalPolicySimulationContext>>? contexts;

  /// A set of [permissions boundary policy documents](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) to include in the simulation.
  final Input<List<String>>? permissionsBoundaryPoliciesJsons;

  /// The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the IAM user, group, or role whose policies will be included in the simulation.
  ///
  /// You must closely match the form of the real service request you are simulating in order to achieve a realistic result. You can use the following additional arguments to specify other characteristics of the simulated requests:
  final Input<String> policySourceArn;

  /// A set of ARNs of resources to include in the simulation.
  ///
  /// This argument is important for actions that have either required or optional resource types listed in [Actions, resources, and condition keys for AWS services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html), and you must provide ARNs that identify AWS objects of the appropriate types for the chosen actions.
  ///
  /// The policy simulator only automatically loads policies associated with the `policy_source_arn`, so if your given resources have their own resource-level policy then you'll also need to provide that explicitly using the `resource_policy_json` argument to achieve a realistic simulation.
  final Input<List<String>>? resourceArns;

  /// Specifies a special simulation type to run. Some EC2 actions require special simulation behaviors and a particular set of resource ARNs to achieve a realistic result.
  ///
  /// For more details, see the `ResourceHandlingOption` request parameter for [the underlying `iam:SimulatePrincipalPolicy` action](https://docs.aws.amazon.com/IAM/latest/APIReference/API_SimulatePrincipalPolicy.html).
  final Input<String>? resourceHandlingOption;

  /// An AWS account ID to use for any resource ARN in `resource_arns` that doesn't include its own AWS account ID. If unspecified, the simulator will use the account ID from the `caller_arn` argument as a placeholder.
  final Input<String>? resourceOwnerAccountId;

  /// An IAM policy document representing the resource-level policy of all of the resources specified in `resource_arns`.
  ///
  /// The policy simulator cannot automatically load policies that are associated with individual resources, as described in the documentation for `resource_arns` above.
  final Input<String>? resourcePolicyJson;

  GetPrincipalPolicySimulationArgs({
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
      map['contexts'] = Input.mapOptionalInputValue<
              List<GetPrincipalPolicySimulationContext>,
              List<Map<String, dynamic>>>(
          contextsValue,
          (value) => Input.encodeList<GetPrincipalPolicySimulationContext,
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
      actionNames: Input.asInput<List<String>>(map['actionNames']),
      additionalPoliciesJsons:
          Input.asOptionalInput<List<String>>(map['additionalPoliciesJsons']),
      callerArn: Input.asOptionalInput<String>(map['callerArn']),
      contexts:
          Input.asOptionalInput<List<GetPrincipalPolicySimulationContext>>(
              map['contexts']),
      permissionsBoundaryPoliciesJsons: Input.asOptionalInput<List<String>>(
          map['permissionsBoundaryPoliciesJsons']),
      policySourceArn: Input.asInput<String>(map['policySourceArn']),
      resourceArns: Input.asOptionalInput<List<String>>(map['resourceArns']),
      resourceHandlingOption:
          Input.asOptionalInput<String>(map['resourceHandlingOption']),
      resourceOwnerAccountId:
          Input.asOptionalInput<String>(map['resourceOwnerAccountId']),
      resourcePolicyJson:
          Input.asOptionalInput<String>(map['resourcePolicyJson']),
    );
  }
}
