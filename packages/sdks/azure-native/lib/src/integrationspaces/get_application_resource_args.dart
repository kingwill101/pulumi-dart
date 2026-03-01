// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_get_application_resource_args_doc}
/// Arguments for getApplicationResource.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_get_application_resource_args_doc}
class GetApplicationResourceArgs {
  /// The name of the Application
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the application resource.
  final pulumi.Input<String> resourceName;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [GetApplicationResourceArgs].
  /// [applicationName] The name of the Application
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the application resource.
  /// [spaceName] The name of the space
  GetApplicationResourceArgs({
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    required pulumi.Output<String> spaceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      spaceName = pulumi.Input.asInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'spaceName': spaceName,
    };
  }

  factory GetApplicationResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationResourceArgs(
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

