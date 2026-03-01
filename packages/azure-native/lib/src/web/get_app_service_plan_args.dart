// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_app_service_plan_args_doc}
/// Arguments for getAppServicePlan.
/// {@endtemplate}
/// {@macro pulumi_web_get_app_service_plan_args_doc}
class GetAppServicePlanArgs {
  /// Name of the App Service plan.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppServicePlanArgs].
  /// [name] Name of the App Service plan.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  GetAppServicePlanArgs({
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

  factory GetAppServicePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

