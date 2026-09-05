// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_principal_policy_simulation_context.dart';
import 'get_principal_policy_simulation_result.dart';

/// Result data returned by getPrincipalPolicySimulation.
class GetPrincipalPolicySimulationIamResult {
  final List<String>? actionNames;
  final List<String>? additionalPoliciesJsons;
  /// `true` if all of the simulation results have decision "allowed", or `false` otherwise.
  final bool? allAllowed;
  final String? callerArn;
  final List<GetPrincipalPolicySimulationContext>? contexts;
  final String? id;
  final List<String>? permissionsBoundaryPoliciesJsons;
  final String? policySourceArn;
  final List<String>? resourceArns;
  final String? resourceHandlingOption;
  final String? resourceOwnerAccountId;
  final String? resourcePolicyJson;
  /// A set of result objects, one for each of the simulated requests, with the following nested attributes:
  final List<GetPrincipalPolicySimulationResult>? results;

  /// Creates a new [GetPrincipalPolicySimulationIamResult].
  /// [actionNames] Optional.
  /// [additionalPoliciesJsons] Optional.
  /// [allAllowed] `true` if all of the simulation results have decision "allowed", or `false` otherwise.
  /// [callerArn] Optional.
  /// [contexts] Optional.
  /// [id] Optional.
  /// [permissionsBoundaryPoliciesJsons] Optional.
  /// [policySourceArn] Optional.
  /// [resourceArns] Optional.
  /// [resourceHandlingOption] Optional.
  /// [resourceOwnerAccountId] Optional.
  /// [resourcePolicyJson] Optional.
  /// [results] A set of result objects, one for each of the simulated requests, with the following nested attributes:
  const GetPrincipalPolicySimulationIamResult({
    this.actionNames,
    this.additionalPoliciesJsons,
    this.allAllowed,
    this.callerArn,
    this.contexts,
    this.id,
    this.permissionsBoundaryPoliciesJsons,
    this.policySourceArn,
    this.resourceArns,
    this.resourceHandlingOption,
    this.resourceOwnerAccountId,
    this.resourcePolicyJson,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionNames': ?actionNames,
      'additionalPoliciesJsons': ?additionalPoliciesJsons,
      'allAllowed': ?allAllowed,
      'callerArn': ?callerArn,
      'contexts': ?(() { final guardedValue = contexts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrincipalPolicySimulationContext, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'permissionsBoundaryPoliciesJsons': ?permissionsBoundaryPoliciesJsons,
      'policySourceArn': ?policySourceArn,
      'resourceArns': ?resourceArns,
      'resourceHandlingOption': ?resourceHandlingOption,
      'resourceOwnerAccountId': ?resourceOwnerAccountId,
      'resourcePolicyJson': ?resourcePolicyJson,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPrincipalPolicySimulationResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetPrincipalPolicySimulationIamResult.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationIamResult(
      actionNames: (() { final guardedValue = map['actionNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      additionalPoliciesJsons: (() { final guardedValue = map['additionalPoliciesJsons']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      allAllowed: (() { final guardedValue = map['allAllowed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      callerArn: (() { final guardedValue = map['callerArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contexts: (() { final guardedValue = map['contexts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrincipalPolicySimulationContext>(guardedValue, (value) => GetPrincipalPolicySimulationContext.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissionsBoundaryPoliciesJsons: (() { final guardedValue = map['permissionsBoundaryPoliciesJsons']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      policySourceArn: (() { final guardedValue = map['policySourceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceArns: (() { final guardedValue = map['resourceArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceHandlingOption: (() { final guardedValue = map['resourceHandlingOption']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceOwnerAccountId: (() { final guardedValue = map['resourceOwnerAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePolicyJson: (() { final guardedValue = map['resourcePolicyJson']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPrincipalPolicySimulationResult>(guardedValue, (value) => GetPrincipalPolicySimulationResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
