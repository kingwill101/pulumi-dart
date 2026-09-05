// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_creation_template_encryption_configuration.dart';
import 'get_repository_creation_template_image_tag_mutability_exclusion_filter.dart';

/// Result data returned by getRepositoryCreationTemplate.
class GetRepositoryCreationTemplateResult {
  /// Which features this template applies to. Contains one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  final List<String>? appliedFors;
  /// The ARN of the custom role used for repository creation.
  final String? customRoleArn;
  /// The description for this template.
  final String? description;
  /// Encryption configuration for any created repositories. See Encryption Configuration below.
  final List<GetRepositoryCreationTemplateEncryptionConfiguration>? encryptionConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The tag mutability setting for any created repositories.
  final String? imageTagMutability;
  /// Block that defines filters to specify which image tags can override the default tag mutability setting.
  final List<GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter>? imageTagMutabilityExclusionFilters;
  /// The lifecycle policy document to apply to any created repositories.
  final String? lifecyclePolicy;
  final String? prefix;
  final String? region;
  /// The registry ID the repository creation template applies to.
  final String? registryId;
  /// The registry policy document to apply to any created repositories.
  final String? repositoryPolicy;
  /// A map of tags to assign to any created repositories.
  final Map<String, String>? resourceTags;

  /// Creates a new [GetRepositoryCreationTemplateResult].
  /// [appliedFors] Which features this template applies to. Contains one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  /// [customRoleArn] The ARN of the custom role used for repository creation.
  /// [description] The description for this template.
  /// [encryptionConfigurations] Encryption configuration for any created repositories. See Encryption Configuration below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageTagMutability] The tag mutability setting for any created repositories.
  /// [imageTagMutabilityExclusionFilters] Block that defines filters to specify which image tags can override the default tag mutability setting.
  /// [lifecyclePolicy] The lifecycle policy document to apply to any created repositories.
  /// [prefix] Optional.
  /// [region] Optional.
  /// [registryId] The registry ID the repository creation template applies to.
  /// [repositoryPolicy] The registry policy document to apply to any created repositories.
  /// [resourceTags] A map of tags to assign to any created repositories.
  const GetRepositoryCreationTemplateResult({
    this.appliedFors,
    this.customRoleArn,
    this.description,
    this.encryptionConfigurations,
    this.id,
    this.imageTagMutability,
    this.imageTagMutabilityExclusionFilters,
    this.lifecyclePolicy,
    this.prefix,
    this.region,
    this.registryId,
    this.repositoryPolicy,
    this.resourceTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedFors': ?appliedFors,
      'customRoleArn': ?customRoleArn,
      'description': ?description,
      'encryptionConfigurations': ?(() { final guardedValue = encryptionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryCreationTemplateEncryptionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'imageTagMutability': ?imageTagMutability,
      'imageTagMutabilityExclusionFilters': ?(() { final guardedValue = imageTagMutabilityExclusionFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'lifecyclePolicy': ?lifecyclePolicy,
      'prefix': ?prefix,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryPolicy': ?repositoryPolicy,
      'resourceTags': ?resourceTags,
    };
  }

  factory GetRepositoryCreationTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCreationTemplateResult(
      appliedFors: (() { final guardedValue = map['appliedFors']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      customRoleArn: (() { final guardedValue = map['customRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfigurations: (() { final guardedValue = map['encryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryCreationTemplateEncryptionConfiguration>(guardedValue, (value) => GetRepositoryCreationTemplateEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageTagMutability: (() { final guardedValue = map['imageTagMutability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageTagMutabilityExclusionFilters: (() { final guardedValue = map['imageTagMutabilityExclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter>(guardedValue, (value) => GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      lifecyclePolicy: (() { final guardedValue = map['lifecyclePolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryPolicy: (() { final guardedValue = map['repositoryPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
