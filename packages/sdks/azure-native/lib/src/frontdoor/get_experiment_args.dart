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
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExperimentArgs].
  /// [experimentName] The Experiment identifier associated with the Experiment
  /// [profileName] The Profile identifier associated with the Tenant and Partner
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  GetExperimentArgs({
    required pulumi.Output<String> experimentName,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      experimentName = pulumi.Input.asInput<String>(experimentName),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experimentName': experimentName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExperimentArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentArgs(
      experimentName: pulumi.Output.create<String>(map['experimentName'] as String),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

