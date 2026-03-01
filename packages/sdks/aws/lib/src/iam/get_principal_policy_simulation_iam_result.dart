// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_policy_simulation_context.dart';
import 'get_principal_policy_simulation_result.dart';

/// Result data returned by getPrincipalPolicySimulation.
class GetPrincipalPolicySimulationIamResult {
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

  /// Creates a new [GetPrincipalPolicySimulationIamResult].
  /// [actionNames] Required.
  /// [additionalPoliciesJsons] Optional.
  /// [allAllowed] `true` if all of the simulation results have decision "allowed", or `false` otherwise.
  /// [callerArn] Optional.
  /// [contexts] Optional.
  /// [id] Required.
  /// [permissionsBoundaryPoliciesJsons] Optional.
  /// [policySourceArn] Required.
  /// [resourceArns] Optional.
  /// [resourceHandlingOption] Optional.
  /// [resourceOwnerAccountId] Optional.
  /// [resourcePolicyJson] Optional.
  /// [results] A set of result objects, one for each of the simulated requests, with the following nested attributes:
  GetPrincipalPolicySimulationIamResult({
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
    return <String, dynamic>{
      'actionNames': actionNames,
      'additionalPoliciesJsons': ?additionalPoliciesJsons,
      'allAllowed': allAllowed,
      'callerArn': ?callerArn,
      'contexts': ?contexts == null ? null : pulumi.Input.encodeList<GetPrincipalPolicySimulationContext, Map<String, dynamic>>(contexts!, (value) => value.toMap()),
      'id': id,
      'permissionsBoundaryPoliciesJsons': ?permissionsBoundaryPoliciesJsons,
      'policySourceArn': policySourceArn,
      'resourceArns': ?resourceArns,
      'resourceHandlingOption': ?resourceHandlingOption,
      'resourceOwnerAccountId': ?resourceOwnerAccountId,
      'resourcePolicyJson': ?resourcePolicyJson,
      'results': pulumi.Input.encodeList<GetPrincipalPolicySimulationResult, Map<String, dynamic>>(results, (value) => value.toMap()),
    };
  }

  factory GetPrincipalPolicySimulationIamResult.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationIamResult(
      actionNames: (map['actionNames'] as List).cast<String>(),
      additionalPoliciesJsons: map['additionalPoliciesJsons'] == null ? null : (map['additionalPoliciesJsons'] as List).cast<String>(),
      allAllowed: map['allAllowed'] as bool,
      callerArn: map['callerArn'] == null ? null : map['callerArn'] as String,
      contexts: map['contexts'] == null ? null : pulumi.Input.decodeList<GetPrincipalPolicySimulationContext>(map['contexts'], (value) => GetPrincipalPolicySimulationContext.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      permissionsBoundaryPoliciesJsons: map['permissionsBoundaryPoliciesJsons'] == null ? null : (map['permissionsBoundaryPoliciesJsons'] as List).cast<String>(),
      policySourceArn: map['policySourceArn'] as String,
      resourceArns: map['resourceArns'] == null ? null : (map['resourceArns'] as List).cast<String>(),
      resourceHandlingOption: map['resourceHandlingOption'] == null ? null : map['resourceHandlingOption'] as String,
      resourceOwnerAccountId: map['resourceOwnerAccountId'] == null ? null : map['resourceOwnerAccountId'] as String,
      resourcePolicyJson: map['resourcePolicyJson'] == null ? null : map['resourcePolicyJson'] as String,
      results: pulumi.Input.decodeList<GetPrincipalPolicySimulationResult>(map['results'], (value) => GetPrincipalPolicySimulationResult.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

