// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipe_component.dart';
import 'get_container_recipe_instance_configuration.dart';
import 'get_container_recipe_target_repository.dart';

/// Result data returned by getContainerRecipe.
class GetContainerRecipeResult {
  final String? arn;
  /// List of objects with components for the container recipe.
  final List<GetContainerRecipeComponent>? components;
  /// Type of the container.
  final String? containerType;
  /// Date the container recipe was created.
  final String? dateCreated;
  /// Description of the container recipe.
  final String? description;
  /// Dockerfile template used to build the image.
  final String? dockerfileTemplateData;
  /// Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image.
  final bool? encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of objects with instance configurations for building and testing container images.
  final List<GetContainerRecipeInstanceConfiguration>? instanceConfigurations;
  /// KMS key used to encrypt the container image.
  final String? kmsKeyId;
  /// Name of the container recipe.
  final String? name;
  /// Owner of the container recipe.
  final String? owner;
  /// Base image for the container recipe.
  final String? parentImage;
  /// Platform of the container recipe.
  final String? platform;
  final String? region;
  /// Key-value map of resource tags for the container recipe.
  final Map<String, String>? tags;
  /// Destination repository for the container image.
  final List<GetContainerRecipeTargetRepository>? targetRepositories;
  /// Version of the container recipe.
  final String? version;
  /// Working directory used during build and test workflows.
  final String? workingDirectory;

  /// Creates a new [GetContainerRecipeResult].
  /// [arn] Optional.
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
  /// [region] Optional.
  /// [tags] Key-value map of resource tags for the container recipe.
  /// [targetRepositories] Destination repository for the container image.
  /// [version] Version of the container recipe.
  /// [workingDirectory] Working directory used during build and test workflows.
  const GetContainerRecipeResult({
    this.arn,
    this.components,
    this.containerType,
    this.dateCreated,
    this.description,
    this.dockerfileTemplateData,
    this.encrypted,
    this.id,
    this.instanceConfigurations,
    this.kmsKeyId,
    this.name,
    this.owner,
    this.parentImage,
    this.platform,
    this.region,
    this.tags,
    this.targetRepositories,
    this.version,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'components': ?(() { final guardedValue = components; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContainerRecipeComponent, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'containerType': ?containerType,
      'dateCreated': ?dateCreated,
      'description': ?description,
      'dockerfileTemplateData': ?dockerfileTemplateData,
      'encrypted': ?encrypted,
      'id': ?id,
      'instanceConfigurations': ?(() { final guardedValue = instanceConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContainerRecipeInstanceConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'owner': ?owner,
      'parentImage': ?parentImage,
      'platform': ?platform,
      'region': ?region,
      'tags': ?tags,
      'targetRepositories': ?(() { final guardedValue = targetRepositories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContainerRecipeTargetRepository, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'version': ?version,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory GetContainerRecipeResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipeResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      components: (() { final guardedValue = map['components']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContainerRecipeComponent>(guardedValue, (value) => GetContainerRecipeComponent.fromMap((value as Map).cast<String, dynamic>())); })(),
      containerType: (() { final guardedValue = map['containerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dockerfileTemplateData: (() { final guardedValue = map['dockerfileTemplateData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceConfigurations: (() { final guardedValue = map['instanceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContainerRecipeInstanceConfiguration>(guardedValue, (value) => GetContainerRecipeInstanceConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentImage: (() { final guardedValue = map['parentImage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetRepositories: (() { final guardedValue = map['targetRepositories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContainerRecipeTargetRepository>(guardedValue, (value) => GetContainerRecipeTargetRepository.fromMap((value as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
