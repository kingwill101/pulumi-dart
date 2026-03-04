// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_value.dart';

/// {@template pulumi_blueprint_policy_assignment_artifact_args_doc}
/// The set of arguments for PolicyAssignmentArtifact.
/// {@endtemplate}
/// {@macro pulumi_blueprint_policy_assignment_artifact_args_doc}
class PolicyAssignmentArtifactArgs {
  /// Name of the blueprint artifact.
  final pulumi.Input<String>? artifactName;

  /// Name of the blueprint definition.
  final pulumi.Input<String> blueprintName;

  /// Artifacts which need to be deployed before the specified artifact.
  final pulumi.Input<List<String>>? dependsOn;

  /// Multi-line explain this resource.
  final pulumi.Input<String>? description;

  /// One-liner string explain this resource.
  final pulumi.Input<String>? displayName;

  /// Specifies the kind of blueprint artifact.
  /// Expected value is 'policyAssignment'.
  final pulumi.Input<String> kind;

  /// Parameter values for the policy definition.
  final pulumi.Input<Map<String, ParameterValue>> parameters;

  /// Azure resource ID of the policy definition.
  final pulumi.Input<String> policyDefinitionId;

  /// Name of the resource group placeholder to which the policy will be assigned.
  final pulumi.Input<String>? resourceGroup;

  /// The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  final pulumi.Input<String> resourceScope;

  /// Creates a new [PolicyAssignmentArtifactArgs].
  /// [artifactName] Name of the blueprint artifact.
  /// [blueprintName] Name of the blueprint definition.
  /// [dependsOn] Artifacts which need to be deployed before the specified artifact.
  /// [description] Multi-line explain this resource.
  /// [displayName] One-liner string explain this resource.
  /// [kind] Specifies the kind of blueprint artifact.
  /// [parameters] Parameter values for the policy definition.
  /// [policyDefinitionId] Azure resource ID of the policy definition.
  /// [resourceGroup] Name of the resource group placeholder to which the policy will be assigned.
  /// [resourceScope] The scope of the resource. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}').
  PolicyAssignmentArtifactArgs({
    this.artifactName,
    required this.blueprintName,
    this.dependsOn,
    this.description,
    this.displayName,
    required this.kind,
    required this.parameters,
    required this.policyDefinitionId,
    this.resourceGroup,
    required this.resourceScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactName': ?artifactName,
      'blueprintName': blueprintName,
      'dependsOn': ?dependsOn,
      'description': ?description,
      'displayName': ?displayName,
      'kind': kind,
      'parameters':
          pulumi.Input.mapInputValue<
            Map<String, ParameterValue>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterValue,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'policyDefinitionId': policyDefinitionId,
      'resourceGroup': ?resourceGroup,
      'resourceScope': resourceScope,
    };
  }

  factory PolicyAssignmentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentArtifactArgs(
      artifactName: (() {
        final guardedValue = map['artifactName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      blueprintName: pulumi.Input.fromValue(map['blueprintName'] as String),
      dependsOn: (() {
        final guardedValue = map['dependsOn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      parameters: pulumi.Input.fromValue(
        pulumi.Input.decodeMapValues<ParameterValue>(
          map['parameters']!,
          (value) =>
              ParameterValue.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      policyDefinitionId: pulumi.Input.fromValue(
        map['policyDefinitionId'] as String,
      ),
      resourceGroup: (() {
        final guardedValue = map['resourceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceScope: pulumi.Input.fromValue(map['resourceScope'] as String),
    );
  }
}
