// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_get_application_args_doc}
class GetApplicationArgs {
  /// The name of the Application
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [GetApplicationArgs].
  /// [applicationName] The name of the Application
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  GetApplicationArgs({
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> spaceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

