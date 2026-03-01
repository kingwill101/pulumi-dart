// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_workflow_profile.dart';

/// {@template pulumi_devhub_workflow_args_doc}
/// The set of arguments for Workflow.
/// {@endtemplate}
/// {@macro pulumi_devhub_workflow_args_doc}
class WorkflowArgs {
  /// The name of the app.
  final pulumi.Input<String>? appName;
  /// The version of the language image used for building the code in the generated dockerfile.
  final pulumi.Input<String>? builderVersion;
  /// The mode of generation to be used for generating Dockerfiles.
  final pulumi.Input<String>? dockerfileGenerationMode;
  /// The directory to output the generated Dockerfile to.
  final pulumi.Input<String>? dockerfileOutputDirectory;
  /// The programming language used.
  final pulumi.Input<String>? generationLanguage;
  /// Profile of a github workflow.
  final pulumi.Input<GitHubWorkflowProfile>? githubWorkflowProfile;
  /// The name of the image to be generated.
  final pulumi.Input<String>? imageName;
  /// The tag to apply to the generated image.
  final pulumi.Input<String>? imageTag;
  /// The version of the language image used for execution in the generated dockerfile.
  final pulumi.Input<String>? languageVersion;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The mode of generation to be used for generating Manifest.
  final pulumi.Input<String>? manifestGenerationMode;
  /// The directory to output the generated manifests to.
  final pulumi.Input<String>? manifestOutputDirectory;
  /// Determines the type of manifests to be generated.
  final pulumi.Input<String>? manifestType;
  /// The namespace to deploy the application to.
  final pulumi.Input<String>? namespace;
  /// The port the application is exposed on.
  final pulumi.Input<String>? port;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workflow resource.
  final pulumi.Input<String>? workflowName;

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
  WorkflowArgs({
    String? appName,
    String? builderVersion,
    String? dockerfileGenerationMode,
    String? dockerfileOutputDirectory,
    String? generationLanguage,
    GitHubWorkflowProfile? githubWorkflowProfile,
    String? imageName,
    String? imageTag,
    String? languageVersion,
    String? location,
    String? manifestGenerationMode,
    String? manifestOutputDirectory,
    String? manifestType,
    String? namespace,
    String? port,
    required String resourceGroupName,
    Map<String, String>? tags,
    String? workflowName,
  }) :
      appName = pulumi.Input.asOptionalInput<String>(appName),
      builderVersion = pulumi.Input.asOptionalInput<String>(builderVersion),
      dockerfileGenerationMode = pulumi.Input.asOptionalInput<String>(dockerfileGenerationMode),
      dockerfileOutputDirectory = pulumi.Input.asOptionalInput<String>(dockerfileOutputDirectory),
      generationLanguage = pulumi.Input.asOptionalInput<String>(generationLanguage),
      githubWorkflowProfile = pulumi.Input.asOptionalInput<GitHubWorkflowProfile>(githubWorkflowProfile),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      imageTag = pulumi.Input.asOptionalInput<String>(imageTag),
      languageVersion = pulumi.Input.asOptionalInput<String>(languageVersion),
      location = pulumi.Input.asOptionalInput<String>(location),
      manifestGenerationMode = pulumi.Input.asOptionalInput<String>(manifestGenerationMode),
      manifestOutputDirectory = pulumi.Input.asOptionalInput<String>(manifestOutputDirectory),
      manifestType = pulumi.Input.asOptionalInput<String>(manifestType),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      port = pulumi.Input.asOptionalInput<String>(port),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workflowName = pulumi.Input.asOptionalInput<String>(workflowName);

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
      appName: map['appName'] == null ? null : map['appName'] as String,
      builderVersion: map['builderVersion'] == null ? null : map['builderVersion'] as String,
      dockerfileGenerationMode: map['dockerfileGenerationMode'] == null ? null : map['dockerfileGenerationMode'] as String,
      dockerfileOutputDirectory: map['dockerfileOutputDirectory'] == null ? null : map['dockerfileOutputDirectory'] as String,
      generationLanguage: map['generationLanguage'] == null ? null : map['generationLanguage'] as String,
      githubWorkflowProfile: map['githubWorkflowProfile'] == null ? null : GitHubWorkflowProfile.fromMap((map['githubWorkflowProfile'] as Map).cast<String, dynamic>()),
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      languageVersion: map['languageVersion'] == null ? null : map['languageVersion'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      manifestGenerationMode: map['manifestGenerationMode'] == null ? null : map['manifestGenerationMode'] as String,
      manifestOutputDirectory: map['manifestOutputDirectory'] == null ? null : map['manifestOutputDirectory'] as String,
      manifestType: map['manifestType'] == null ? null : map['manifestType'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workflowName: map['workflowName'] == null ? null : map['workflowName'] as String,
    );
  }
}

