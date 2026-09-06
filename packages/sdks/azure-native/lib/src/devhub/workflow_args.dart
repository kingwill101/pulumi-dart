// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_workflow_profile.dart';

/// {@template pulumi_devhub_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_devhub_workflow_args_doc}
class WorkflowArgs {
  /// The name of the app.
  final pulumi.Input<String?>? appName;
  /// The version of the language image used for building the code in the generated dockerfile.
  final pulumi.Input<String?>? builderVersion;
  /// The mode of generation to be used for generating Dockerfiles.
  final pulumi.Input<dynamic>? dockerfileGenerationMode;
  /// The directory to output the generated Dockerfile to.
  final pulumi.Input<String?>? dockerfileOutputDirectory;
  /// The programming language used.
  final pulumi.Input<dynamic>? generationLanguage;
  /// Profile of a github workflow.
  final pulumi.Input<GitHubWorkflowProfile?>? githubWorkflowProfile;
  /// The name of the image to be generated.
  final pulumi.Input<String?>? imageName;
  /// The tag to apply to the generated image.
  final pulumi.Input<String?>? imageTag;
  /// The version of the language image used for execution in the generated dockerfile.
  final pulumi.Input<String?>? languageVersion;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The mode of generation to be used for generating Manifest.
  final pulumi.Input<dynamic>? manifestGenerationMode;
  /// The directory to output the generated manifests to.
  final pulumi.Input<String?>? manifestOutputDirectory;
  /// Determines the type of manifests to be generated.
  final pulumi.Input<dynamic>? manifestType;
  /// The namespace to deploy the application to.
  final pulumi.Input<String?>? namespace;
  /// The port the application is exposed on.
  final pulumi.Input<String?>? port;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the workflow resource.
  final pulumi.Input<String?>? workflowName;

  /// Creates a new [WorkflowArgs].
  /// [appName] The name of the app.
  /// [builderVersion] The version of the language image used for building the code in the generated dockerfile.
  /// [dockerfileGenerationMode] The mode of generation to be used for generating Dockerfiles.
  /// [dockerfileOutputDirectory] The directory to output the generated Dockerfile to.
  /// [generationLanguage] The programming language used.
  /// [githubWorkflowProfile] Profile of a github workflow.
  /// [imageName] The name of the image to be generated.
  /// [imageTag] The tag to apply to the generated image.
  /// [languageVersion] The version of the language image used for execution in the generated dockerfile.
  /// [location] The geo-location where the resource lives
  /// [manifestGenerationMode] The mode of generation to be used for generating Manifest.
  /// [manifestOutputDirectory] The directory to output the generated manifests to.
  /// [manifestType] Determines the type of manifests to be generated.
  /// [namespace] The namespace to deploy the application to.
  /// [port] The port the application is exposed on.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workflowName] The name of the workflow resource.
  const WorkflowArgs({
    this.appName,
    this.builderVersion,
    this.dockerfileGenerationMode,
    this.dockerfileOutputDirectory,
    this.generationLanguage,
    this.githubWorkflowProfile,
    this.imageName,
    this.imageTag,
    this.languageVersion,
    this.location,
    this.manifestGenerationMode,
    this.manifestOutputDirectory,
    this.manifestType,
    this.namespace,
    this.port,
    required this.resourceGroupName,
    this.tags,
    this.workflowName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'builderVersion': ?builderVersion,
      'dockerfileGenerationMode': ?dockerfileGenerationMode,
      'dockerfileOutputDirectory': ?dockerfileOutputDirectory,
      'generationLanguage': ?generationLanguage,
      'githubWorkflowProfile': ?pulumi.Input.mapOptionalInputValue<GitHubWorkflowProfile, Map<String, dynamic>>(githubWorkflowProfile, (value) => value.toMap()),
      'imageName': ?imageName,
      'imageTag': ?imageTag,
      'languageVersion': ?languageVersion,
      'location': ?location,
      'manifestGenerationMode': ?manifestGenerationMode,
      'manifestOutputDirectory': ?manifestOutputDirectory,
      'manifestType': ?manifestType,
      'namespace': ?namespace,
      'port': ?port,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workflowName': ?workflowName,
    };
  }

  factory WorkflowArgs.fromMap(Map<String, dynamic> map) {
    return WorkflowArgs(
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      builderVersion: (() { final guardedValue = map['builderVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerfileGenerationMode: (() { final guardedValue = map['dockerfileGenerationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      dockerfileOutputDirectory: (() { final guardedValue = map['dockerfileOutputDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generationLanguage: (() { final guardedValue = map['generationLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      githubWorkflowProfile: (() { final guardedValue = map['githubWorkflowProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitHubWorkflowProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageTag: (() { final guardedValue = map['imageTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageVersion: (() { final guardedValue = map['languageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestGenerationMode: (() { final guardedValue = map['manifestGenerationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      manifestOutputDirectory: (() { final guardedValue = map['manifestOutputDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manifestType: (() { final guardedValue = map['manifestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workflowName: (() { final guardedValue = map['workflowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
