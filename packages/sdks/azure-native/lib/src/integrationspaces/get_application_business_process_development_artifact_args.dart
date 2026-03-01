// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_get_application_business_process_development_artifact_args_doc}
/// Arguments for getApplicationBusinessProcessDevelopmentArtifact.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_get_application_business_process_development_artifact_args_doc}
class GetApplicationBusinessProcessDevelopmentArtifactArgs {
  /// The name of the Application
  final pulumi.Input<String> applicationName;
  /// The name of the business process development artifact.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [GetApplicationBusinessProcessDevelopmentArtifactArgs].
  /// [applicationName] The name of the Application
  /// [name] The name of the business process development artifact.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  GetApplicationBusinessProcessDevelopmentArtifactArgs({
    required pulumi.Output<String> applicationName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> spaceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetApplicationBusinessProcessDevelopmentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationBusinessProcessDevelopmentArtifactArgs(
      applicationName: pulumi.Output.create<String>(map['applicationName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

