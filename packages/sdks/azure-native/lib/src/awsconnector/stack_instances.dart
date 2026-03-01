// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_targets.dart';
import 'parameter.dart';

/// Definition of StackInstances
class StackInstances {
  /// The AWS OrganizationalUnitIds or Accounts for which to create stack instances in the specified Regions.
  final DeploymentTargets? deploymentTargets;
  /// A list of stack set parameters whose values you want to override in the selected stack instances.
  final List<Parameter>? parameterOverrides;
  /// The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
  final List<String>? regions;

  /// Creates a new [StackInstances].
  /// [deploymentTargets] The AWS OrganizationalUnitIds or Accounts for which to create stack instances in the specified Regions.
  /// [parameterOverrides] A list of stack set parameters whose values you want to override in the selected stack instances.
  /// [regions] The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
  StackInstances({
    this.deploymentTargets,
    this.parameterOverrides,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentTargets': ?deploymentTargets == null ? null : deploymentTargets!.toMap(),
      'parameterOverrides': ?parameterOverrides == null ? null : pulumi.Input.encodeList<Parameter, Map<String, dynamic>>(parameterOverrides!, (value) => value.toMap()),
      'regions': ?regions,
    };
  }

  factory StackInstances.fromMap(Map<String, dynamic> map) {
    return StackInstances(
      deploymentTargets: map['deploymentTargets'] == null ? null : DeploymentTargets.fromMap((map['deploymentTargets'] as Map).cast<String, dynamic>()),
      parameterOverrides: map['parameterOverrides'] == null ? null : pulumi.Input.decodeList<Parameter>(map['parameterOverrides'], (value) => Parameter.fromMap((value as Map).cast<String, dynamic>())),
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
    );
  }
}

