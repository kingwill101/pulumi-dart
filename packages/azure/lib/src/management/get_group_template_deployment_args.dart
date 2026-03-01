// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_get_group_template_deployment_get_group_template_deployment_args_doc}
/// Arguments for getGroupTemplateDeployment.
/// {@endtemplate}
/// {@macro pulumi_management_get_group_template_deployment_get_group_template_deployment_args_doc}
class GetGroupTemplateDeploymentArgs {
  /// The ID of the Management Group to which this template was applied.
  final pulumi.Input<String> managementGroupId;
  /// The name of this Management Group Template Deployment.
  final pulumi.Input<String> name;

  /// Creates a new [GetGroupTemplateDeploymentArgs].
  /// [managementGroupId] The ID of the Management Group to which this template was applied.
  /// [name] The name of this Management Group Template Deployment.
  GetGroupTemplateDeploymentArgs({
    required String managementGroupId,
    required String name,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'name': name,
    };
  }

  factory GetGroupTemplateDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupTemplateDeploymentArgs(
      managementGroupId: map['managementGroupId'] as String,
      name: map['name'] as String,
    );
  }
}

