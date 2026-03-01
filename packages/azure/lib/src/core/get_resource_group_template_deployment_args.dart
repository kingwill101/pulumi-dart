// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_resource_group_template_deployment_get_resource_group_template_deployment_args_doc}
/// Arguments for getResourceGroupTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_core_get_resource_group_template_deployment_get_resource_group_template_deployment_args_doc}
class GetResourceGroupTemplateDeploymentArgs {
  /// The name of this Resource Group Template Deployment.
  final pulumi.Input<String> name;
  /// The name of the Resource Group to which the Resource Group Template Deployment was applied.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetResourceGroupTemplateDeploymentArgs].
  /// [name] The name of this Resource Group Template Deployment.
  /// [resourceGroupName] The name of the Resource Group to which the Resource Group Template Deployment was applied.
  GetResourceGroupTemplateDeploymentArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetResourceGroupTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupTemplateDeploymentArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

