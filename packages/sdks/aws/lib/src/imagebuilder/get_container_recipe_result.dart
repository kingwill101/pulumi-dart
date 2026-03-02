// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipe_component.dart';
import 'get_container_recipe_instance_configuration.dart';
import 'get_container_recipe_target_repository.dart';

/// Result data returned by getContainerRecipe.
class GetContainerRecipeResult {
  final String arn;
  /// List of objects with components for the container recipe.
  final List<GetContainerRecipeComponent> components;
  /// Type of the container.
  final String containerType;
  /// Date the container recipe was created.
  final String dateCreated;
  /// Description of the container recipe.
  final String description;
  /// Dockerfile template used to build the image.
  final String dockerfileTemplateData;
  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final bool encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of objects with instance configurations for building and testing container images.
  final List<GetContainerRecipeInstanceConfiguration> instanceConfigurations;
  /// KMS key used to encrypt the container image.
  final String kmsKeyId;
  /// Name of the container recipe.
  final String name;
  /// Owner of the container recipe.
  final String owner;
  /// Base image for the container recipe.
  final String parentImage;
  /// Platform of the container recipe.
  final String platform;
  final String region;
  /// Key-value map of resource tags for the container recipe.
  final Map<String, String> tags;
  /// Destination repository for the container image.
  final List<GetContainerRecipeTargetRepository> targetRepositories;
  /// Version of the container recipe.
  final String version;
  /// Working directory used during build and test workflows.
  final String workingDirectory;

  /// Creates a new [GetContainerRecipeResult].
  /// [arn] Required.
  /// [components] List of objects with components for the container recipe.
  /// [containerType] Type of the container.
  /// [dateCreated] Date the container recipe was created.
  /// [description] Description of the container recipe.
  /// [dockerfileTemplateData] Dockerfile template used to build the image.
  /// [encrypted] Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceConfigurations] List of objects with instance configurations for building and testing container images.
  /// [kmsKeyId] KMS key used to encrypt the container image.
  /// [name] Name of the container recipe.
  /// [owner] Owner of the container recipe.
  /// [parentImage] Base image for the container recipe.
  /// [platform] Platform of the container recipe.
  /// [region] Required.
  /// [tags] Key-value map of resource tags for the container recipe.
  /// [targetRepositories] Destination repository for the container image.
  /// [version] Version of the container recipe.
  /// [workingDirectory] Working directory used during build and test workflows.
  GetContainerRecipeResult({
    required this.arn,
    required this.components,
    required this.containerType,
    required this.dateCreated,
    required this.description,
    required this.dockerfileTemplateData,
    required this.encrypted,
    required this.id,
    required this.instanceConfigurations,
    required this.kmsKeyId,
    required this.name,
    required this.owner,
    required this.parentImage,
    required this.platform,
    required this.region,
    required this.tags,
    required this.targetRepositories,
    required this.version,
    required this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'components': pulumi.Input.encodeList<GetContainerRecipeComponent, Map<String, dynamic>>(components, (value) => value.toMap()),
      'containerType': containerType,
      'dateCreated': dateCreated,
      'description': description,
      'dockerfileTemplateData': dockerfileTemplateData,
      'encrypted': encrypted,
      'id': id,
      'instanceConfigurations': pulumi.Input.encodeList<GetContainerRecipeInstanceConfiguration, Map<String, dynamic>>(instanceConfigurations, (value) => value.toMap()),
      'kmsKeyId': kmsKeyId,
      'name': name,
      'owner': owner,
      'parentImage': parentImage,
      'platform': platform,
      'region': region,
      'tags': tags,
      'targetRepositories': pulumi.Input.encodeList<GetContainerRecipeTargetRepository, Map<String, dynamic>>(targetRepositories, (value) => value.toMap()),
      'version': version,
      'workingDirectory': workingDirectory,
    };
  }

  factory GetContainerRecipeResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipeResult(
      arn: map['arn'] as String,
      components: pulumi.Input.decodeList<GetContainerRecipeComponent>(map['components']!, (value) => GetContainerRecipeComponent.fromMap((value as Map).cast<String, dynamic>())),
      containerType: map['containerType'] as String,
      dateCreated: map['dateCreated'] as String,
      description: map['description'] as String,
      dockerfileTemplateData: map['dockerfileTemplateData'] as String,
      encrypted: map['encrypted'] as bool,
      id: map['id'] as String,
      instanceConfigurations: pulumi.Input.decodeList<GetContainerRecipeInstanceConfiguration>(map['instanceConfigurations']!, (value) => GetContainerRecipeInstanceConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      kmsKeyId: map['kmsKeyId'] as String,
      name: map['name'] as String,
      owner: map['owner'] as String,
      parentImage: map['parentImage'] as String,
      platform: map['platform'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetRepositories: pulumi.Input.decodeList<GetContainerRecipeTargetRepository>(map['targetRepositories']!, (value) => GetContainerRecipeTargetRepository.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] as String,
      workingDirectory: map['workingDirectory'] as String,
    );
  }
}

