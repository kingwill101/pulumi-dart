// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_principal_policy_simulation_context/get_principal_policy_simulation_context.dart';
import '../get_principal_policy_simulation_result/get_principal_policy_simulation_result.dart';

/// Result data returned by getPrincipalPolicySimulation.
class GetPrincipalPolicySimulationResult2 {
  final List<String> actionNames;
  final List<String>? additionalPoliciesJsons;

  /// `true` if all of the simulation results have decision "allowed", or `false` otherwise.
  final bool allAllowed;
  final String? callerArn;
  final List<GetPrincipalPolicySimulationContext>? contexts;
  final String id;
  final List<String>? permissionsBoundaryPoliciesJsons;
  final String policySourceArn;
  final List<String>? resourceArns;
  final String? resourceHandlingOption;
  final String? resourceOwnerAccountId;
  final String? resourcePolicyJson;

  /// A set of result objects, one for each of the simulated requests, with the following nested attributes:
  final List<GetPrincipalPolicySimulationResult> results;

  GetPrincipalPolicySimulationResult2({
    required this.actionNames,
    this.additionalPoliciesJsons,
    required this.allAllowed,
    this.callerArn,
    this.contexts,
    required this.id,
    this.permissionsBoundaryPoliciesJsons,
    required this.policySourceArn,
    this.resourceArns,
    this.resourceHandlingOption,
    this.resourceOwnerAccountId,
    this.resourcePolicyJson,
    required this.results,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionNames'] = actionNames;
    final additionalPoliciesJsonsValue = additionalPoliciesJsons;
    if (additionalPoliciesJsonsValue != null) {
      map['additionalPoliciesJsons'] = additionalPoliciesJsonsValue;
    }
    map['allAllowed'] = allAllowed;
    final callerArnValue = callerArn;
    if (callerArnValue != null) {
      map['callerArn'] = callerArnValue;
    }
    final contextsValue = contexts;
    if (contextsValue != null) {
      map['contexts'] = Input.encodeList<GetPrincipalPolicySimulationContext,
          Map<String, dynamic>>(contextsValue, (value) => value.toMap());
    }
    map['id'] = id;
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
    map['results'] = Input.encodeList<GetPrincipalPolicySimulationResult,
        Map<String, dynamic>>(results, (value) => value.toMap());
    return map;
  }

  factory GetPrincipalPolicySimulationResult2.fromMap(
      Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationResult2(
      actionNames: (map['actionNames'] as List).cast<String>(),
      additionalPoliciesJsons: map['additionalPoliciesJsons'] == null
          ? null
          : (map['additionalPoliciesJsons'] as List).cast<String>(),
      allAllowed: map['allAllowed'] as bool,
      callerArn: map['callerArn'] == null ? null : map['callerArn'] as String,
      contexts: map['contexts'] == null
          ? null
          : Input.decodeList<GetPrincipalPolicySimulationContext>(
              map['contexts'],
              (value) => GetPrincipalPolicySimulationContext.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
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
      results: Input.decodeList<GetPrincipalPolicySimulationResult>(
          map['results'],
          (value) => GetPrincipalPolicySimulationResult.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
