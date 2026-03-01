// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_stacks_what_if_results_at_resource_group_args_doc}
/// Arguments for getDeploymentStacksWhatIfResultsAtResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_stacks_what_if_results_at_resource_group_args_doc}
class GetDeploymentStacksWhatIfResultsAtResourceGroupArgs {
  /// Name of the deployment stack what-if result.
  final pulumi.Input<String> deploymentStacksWhatIfResultName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeploymentStacksWhatIfResultsAtResourceGroupArgs].
  /// [deploymentStacksWhatIfResultName] Name of the deployment stack what-if result.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeploymentStacksWhatIfResultsAtResourceGroupArgs({
    required String deploymentStacksWhatIfResultName,
    required String resourceGroupName,
  }) :
      deploymentStacksWhatIfResultName = pulumi.Input.asInput<String>(deploymentStacksWhatIfResultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStacksWhatIfResultName': deploymentStacksWhatIfResultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentStacksWhatIfResultsAtResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStacksWhatIfResultsAtResourceGroupArgs(
      deploymentStacksWhatIfResultName: map['deploymentStacksWhatIfResultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

