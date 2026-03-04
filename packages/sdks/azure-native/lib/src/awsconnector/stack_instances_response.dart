// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_targets_response.dart';
import 'parameter_response.dart';

/// Definition of StackInstances
class StackInstancesResponse {
  /// The AWS OrganizationalUnitIds or Accounts for which to create stack instances in the specified Regions.
  final pulumi.Input<DeploymentTargetsResponse>? deploymentTargets;

  /// A list of stack set parameters whose values you want to override in the selected stack instances.
  final pulumi.Input<List<ParameterResponse>>? parameterOverrides;

  /// The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
  final pulumi.Input<List<String>>? regions;

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
      'deploymentTargets':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentTargetsResponse,
            Map<String, dynamic>
          >(deploymentTargets, (value) => value.toMap()),
      'parameterOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<ParameterResponse>,
            List<Map<String, dynamic>>
          >(
            parameterOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  ParameterResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regions': ?regions,
    };
  }

  factory StackInstancesResponse.fromMap(Map<String, dynamic> map) {
    return StackInstancesResponse(
      deploymentTargets: (() {
        final guardedValue = map['deploymentTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentTargetsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parameterOverrides: (() {
        final guardedValue = map['parameterOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ParameterResponse>(
            guardedValue,
            (value) => ParameterResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      regions: (() {
        final guardedValue = map['regions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
