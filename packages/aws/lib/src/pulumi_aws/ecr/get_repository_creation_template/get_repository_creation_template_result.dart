// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_repository_creation_template_encryption_configuration/get_repository_creation_template_encryption_configuration.dart';
import '../get_repository_creation_template_image_tag_mutability_exclusion_filter/get_repository_creation_template_image_tag_mutability_exclusion_filter.dart';

/// Result data returned by getRepositoryCreationTemplate.
class GetRepositoryCreationTemplateResult {
  /// Which features this template applies to. Contains one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  final List<String> appliedFors;

  /// The ARN of the custom role used for repository creation.
  final String customRoleArn;

  /// The description for this template.
  final String description;

  /// Encryption configuration for any created repositories. See Encryption Configuration below.
  final List<GetRepositoryCreationTemplateEncryptionConfiguration>
      encryptionConfigurations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The tag mutability setting for any created repositories.
  final String imageTagMutability;

  /// Block that defines filters to specify which image tags can override the default tag mutability setting.
  final List<GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter>
      imageTagMutabilityExclusionFilters;

  /// The lifecycle policy document to apply to any created repositories.
  final String lifecyclePolicy;
  final String prefix;
  final String region;

  /// The registry ID the repository creation template applies to.
  final String registryId;

  /// The registry policy document to apply to any created repositories.
  final String repositoryPolicy;

  /// A map of tags to assign to any created repositories.
  final Map<String, String> resourceTags;

  GetRepositoryCreationTemplateResult({
    required this.appliedFors,
    required this.customRoleArn,
    required this.description,
    required this.encryptionConfigurations,
    required this.id,
    required this.imageTagMutability,
    required this.imageTagMutabilityExclusionFilters,
    required this.lifecyclePolicy,
    required this.prefix,
    required this.region,
    required this.registryId,
    required this.repositoryPolicy,
    required this.resourceTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appliedFors'] = appliedFors;
    map['customRoleArn'] = customRoleArn;
    map['description'] = description;
    map['encryptionConfigurations'] = Input.encodeList<
            GetRepositoryCreationTemplateEncryptionConfiguration,
            Map<String, dynamic>>(
        encryptionConfigurations, (value) => value.toMap());
    map['id'] = id;
    map['imageTagMutability'] = imageTagMutability;
    map['imageTagMutabilityExclusionFilters'] = Input.encodeList<
            GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter,
            Map<String, dynamic>>(
        imageTagMutabilityExclusionFilters, (value) => value.toMap());
    map['lifecyclePolicy'] = lifecyclePolicy;
    map['prefix'] = prefix;
    map['region'] = region;
    map['registryId'] = registryId;
    map['repositoryPolicy'] = repositoryPolicy;
    map['resourceTags'] = resourceTags;
    return map;
  }

  factory GetRepositoryCreationTemplateResult.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryCreationTemplateResult(
      appliedFors: (map['appliedFors'] as List).cast<String>(),
      customRoleArn: map['customRoleArn'] as String,
      description: map['description'] as String,
      encryptionConfigurations: Input.decodeList<
              GetRepositoryCreationTemplateEncryptionConfiguration>(
          map['encryptionConfigurations'],
          (value) =>
              GetRepositoryCreationTemplateEncryptionConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      imageTagMutability: map['imageTagMutability'] as String,
      imageTagMutabilityExclusionFilters: Input.decodeList<
              GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter>(
          map['imageTagMutabilityExclusionFilters'],
          (value) =>
              GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter
                  .fromMap((value as Map).cast<String, dynamic>())),
      lifecyclePolicy: map['lifecyclePolicy'] as String,
      prefix: map['prefix'] as String,
      region: map['region'] as String,
      registryId: map['registryId'] as String,
      repositoryPolicy: map['repositoryPolicy'] as String,
      resourceTags: (map['resourceTags'] as Map).cast<String, String>(),
    );
  }
}
