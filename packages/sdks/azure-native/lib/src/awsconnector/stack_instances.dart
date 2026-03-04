// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_targets.dart';
import 'parameter.dart';

/// Definition of StackInstances
class StackInstances {
  /// The AWS OrganizationalUnitIds or Accounts for which to create stack instances in the specified Regions.
  final pulumi.Input<DeploymentTargets>? deploymentTargets;

  /// A list of stack set parameters whose values you want to override in the selected stack instances.
  final pulumi.Input<List<Parameter>>? parameterOverrides;

  /// The names of one or more Regions where you want to create stack instances using the specified AWS account(s).
  final pulumi.Input<List<String>>? regions;

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
      'deploymentTargets':
          ?pulumi.Input.mapOptionalInputValue<
            DeploymentTargets,
            Map<String, dynamic>
          >(deploymentTargets, (value) => value.toMap()),
      'parameterOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<Parameter>,
            List<Map<String, dynamic>>
          >(
            parameterOverrides,
            (value) => pulumi.Input.encodeList<Parameter, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'regions': ?regions,
    };
  }

  factory StackInstances.fromMap(Map<String, dynamic> map) {
    return StackInstances(
      deploymentTargets: (() {
        final guardedValue = map['deploymentTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DeploymentTargets.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      parameterOverrides: (() {
        final guardedValue = map['parameterOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Parameter>(
            guardedValue,
            (value) =>
                Parameter.fromMap((value as Map).cast<String, dynamic>()),
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
