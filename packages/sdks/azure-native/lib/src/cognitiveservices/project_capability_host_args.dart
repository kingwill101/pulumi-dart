// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_capability_host_cognitiveservices.dart';

/// {@template pulumi_cognitiveservices_project_capability_host_args_doc}
/// The set of arguments for ProjectCapabilityHost.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_project_capability_host_args_doc}
class ProjectCapabilityHostArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;

  /// The name of the capability host associated with the Cognitive Services Resource
  final pulumi.Input<String>? capabilityHostName;

  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ProjectCapabilityHostCognitiveservices>
  projectCapabilityHostProperties;

  /// The name of Cognitive Services account's project.
  final pulumi.Input<String> projectName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ProjectCapabilityHostArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [capabilityHostName] The name of the capability host associated with the Cognitive Services Resource
  /// [projectCapabilityHostProperties] [Required] Additional attributes of the entity.
  /// [projectName] The name of Cognitive Services account's project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ProjectCapabilityHostArgs({
    required this.accountName,
    this.capabilityHostName,
    required this.projectCapabilityHostProperties,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'capabilityHostName': ?capabilityHostName,
      'projectCapabilityHostProperties': projectCapabilityHostProperties,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ProjectCapabilityHostArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCapabilityHostArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      capabilityHostName: (() {
        final guardedValue = map['capabilityHostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectCapabilityHostProperties: pulumi.Input.fromValue(
        map['projectCapabilityHostProperties']
            as ProjectCapabilityHostCognitiveservices,
      ),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
