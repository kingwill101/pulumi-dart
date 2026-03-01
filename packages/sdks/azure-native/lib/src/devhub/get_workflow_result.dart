// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_workflow_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWorkflow.
class GetWorkflowResult {
  /// The name of the app.
  final String? appName;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The version of the language image used for building the code in the generated dockerfile.
  final String? builderVersion;
  /// The mode of generation to be used for generating Dockerfiles.
  final String? dockerfileGenerationMode;
  /// The directory to output the generated Dockerfile to.
  final String? dockerfileOutputDirectory;
  /// The programming language used.
  final String? generationLanguage;
  /// Profile of a github workflow.
  final GitHubWorkflowProfileResponse? githubWorkflowProfile;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the image to be generated.
  final String? imageName;
  /// The tag to apply to the generated image.
  final String? imageTag;
  /// The version of the language image used for execution in the generated dockerfile.
  final String? languageVersion;
  /// The geo-location where the resource lives
  final String location;
  /// The mode of generation to be used for generating Manifest.
  final String? manifestGenerationMode;
  /// The directory to output the generated manifests to.
  final String? manifestOutputDirectory;
  /// Determines the type of manifests to be generated.
  final String? manifestType;
  /// The name of the resource
  final String name;
  /// The namespace to deploy the application to.
  final String? namespace;
  /// The port the application is exposed on.
  final String? port;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWorkflowResult].
  /// [appName] The name of the app.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [builderVersion] The version of the language image used for building the code in the generated dockerfile.
  /// [dockerfileGenerationMode] The mode of generation to be used for generating Dockerfiles.
  /// [dockerfileOutputDirectory] The directory to output the generated Dockerfile to.
  /// [generationLanguage] The programming language used.
  /// [githubWorkflowProfile] Profile of a github workflow.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [imageName] The name of the image to be generated.
  /// [imageTag] The tag to apply to the generated image.
  /// [languageVersion] The version of the language image used for execution in the generated dockerfile.
  /// [location] The geo-location where the resource lives
  /// [manifestGenerationMode] The mode of generation to be used for generating Manifest.
  /// [manifestOutputDirectory] The directory to output the generated manifests to.
  /// [manifestType] Determines the type of manifests to be generated.
  /// [name] The name of the resource
  /// [namespace] The namespace to deploy the application to.
  /// [port] The port the application is exposed on.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWorkflowResult({
    this.appName,
    required this.azureApiVersion,
    this.builderVersion,
    this.dockerfileGenerationMode,
    this.dockerfileOutputDirectory,
    this.generationLanguage,
    this.githubWorkflowProfile,
    required this.id,
    this.imageName,
    this.imageTag,
    this.languageVersion,
    required this.location,
    this.manifestGenerationMode,
    this.manifestOutputDirectory,
    this.manifestType,
    required this.name,
    this.namespace,
    this.port,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'azureApiVersion': azureApiVersion,
      'builderVersion': ?builderVersion,
      'dockerfileGenerationMode': ?dockerfileGenerationMode,
      'dockerfileOutputDirectory': ?dockerfileOutputDirectory,
      'generationLanguage': ?generationLanguage,
      'githubWorkflowProfile': ?githubWorkflowProfile == null ? null : githubWorkflowProfile!.toMap(),
      'id': id,
      'imageName': ?imageName,
      'imageTag': ?imageTag,
      'languageVersion': ?languageVersion,
      'location': location,
      'manifestGenerationMode': ?manifestGenerationMode,
      'manifestOutputDirectory': ?manifestOutputDirectory,
      'manifestType': ?manifestType,
      'name': name,
      'namespace': ?namespace,
      'port': ?port,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetWorkflowResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowResult(
      appName: map['appName'] == null ? null : map['appName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      builderVersion: map['builderVersion'] == null ? null : map['builderVersion'] as String,
      dockerfileGenerationMode: map['dockerfileGenerationMode'] == null ? null : map['dockerfileGenerationMode'] as String,
      dockerfileOutputDirectory: map['dockerfileOutputDirectory'] == null ? null : map['dockerfileOutputDirectory'] as String,
      generationLanguage: map['generationLanguage'] == null ? null : map['generationLanguage'] as String,
      githubWorkflowProfile: map['githubWorkflowProfile'] == null ? null : GitHubWorkflowProfileResponse.fromMap((map['githubWorkflowProfile'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      imageTag: map['imageTag'] == null ? null : map['imageTag'] as String,
      languageVersion: map['languageVersion'] == null ? null : map['languageVersion'] as String,
      location: map['location'] as String,
      manifestGenerationMode: map['manifestGenerationMode'] == null ? null : map['manifestGenerationMode'] as String,
      manifestOutputDirectory: map['manifestOutputDirectory'] == null ? null : map['manifestOutputDirectory'] as String,
      manifestType: map['manifestType'] == null ? null : map['manifestType'] as String,
      name: map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

