// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_frontdoor_get_experiment_args_doc}
/// Arguments for getExperiment.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_get_experiment_args_doc}
class GetExperimentArgs {
  /// The Experiment identifier associated with the Experiment
  final pulumi.Input<String> experimentName;
  /// The Profile identifier associated with the Tenant and Partner
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExperimentArgs].
  /// [experimentName] The Experiment identifier associated with the Experiment
  /// [profileName] The Profile identifier associated with the Tenant and Partner
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetExperimentArgs({
    required this.experimentName,
    required this.profileName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentName': experimentName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExperimentArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs(
      experimentName: pulumi.Input.fromValue(map['experimentName'] as String),
      profileName: pulumi.Input.fromValue(map['profileName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
