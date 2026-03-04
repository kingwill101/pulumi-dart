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
    required this.applicationName,
    required this.name,
    required this.resourceGroupName,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetApplicationBusinessProcessDevelopmentArtifactArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationBusinessProcessDevelopmentArtifactArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      spaceName: pulumi.Input.fromValue(map['spaceName'] as String),
    );
  }
}
