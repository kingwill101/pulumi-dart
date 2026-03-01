// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_targets_response.dart';
import 'parameter_response.dart';

/// Definition of StackInstances
class StackInstancesResponse {
  /// The AWS OrganizationalUnitIds or Accounts for which to create stack instances in the specified Regions.
  final DeploymentTargetsResponse? deploymentTargets;
  /// A list of stack set parameters whose values you want to override in the selected stack instances.
  final List<ParameterResponse>? parameterOverrides;
  /// The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
  final List<String>? regions;

  /// Creates a new [StackInstancesResponse].
  /// [deploymentTargets] The AWS OrganizationalUnitIds or Accounts for which to create stack instances in the specified Regions.
  /// [parameterOverrides] A list of stack set parameters whose values you want to override in the selected stack instances.
  /// [regions] The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
  StackInstancesResponse({
    this.deploymentTargets,
    this.parameterOverrides,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentTargets': ?deploymentTargets == null ? null : deploymentTargets!.toMap(),
      'parameterOverrides': ?parameterOverrides == null ? null : pulumi.Input.encodeList<ParameterResponse, Map<String, dynamic>>(parameterOverrides!, (value) => value.toMap()),
      'regions': ?regions,
    };
  }

  factory StackInstancesResponse.fromMap(Map<String, dynamic> map) {
    return StackInstancesResponse(
      deploymentTargets: map['deploymentTargets'] == null ? null : DeploymentTargetsResponse.fromMap((map['deploymentTargets'] as Map).cast<String, dynamic>()),
      parameterOverrides: map['parameterOverrides'] == null ? null : pulumi.Input.decodeList<ParameterResponse>(map['parameterOverrides'], (value) => ParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      regions: map['regions'] == null ? null : (map['regions'] as List).cast<String>(),
    );
  }
}

