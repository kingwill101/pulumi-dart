// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_encryption_configuration.dart';
import 'get_repository_image_scanning_configuration.dart';
import 'get_repository_image_tag_mutability_exclusion_filter.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  /// Full ARN of the repository.
  final String arn;

  /// Encryption configuration for the repository. See Encryption Configuration below.
  final List<GetRepositoryEncryptionConfiguration> encryptionConfigurations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Configuration block that defines image scanning configuration for the repository. See Image Scanning Configuration below.
  final List<GetRepositoryImageScanningConfiguration>
  imageScanningConfigurations;

  /// The tag mutability setting for the repository.
  final String imageTagMutability;

  /// Block that defines filters to specify which image tags can override the default tag mutability setting.
  final List<GetRepositoryImageTagMutabilityExclusionFilter>
  imageTagMutabilityExclusionFilters;

  /// List of image tags associated with the most recently pushed image in the repository.
  final List<String> mostRecentImageTags;
  final String name;
  final String region;
  final String registryId;

  /// URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  final String repositoryUrl;

  /// Map of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetRepositoryResult].
  /// [arn] Full ARN of the repository.
  /// [encryptionConfigurations] Encryption configuration for the repository. See Encryption Configuration below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageScanningConfigurations] Configuration block that defines image scanning configuration for the repository. See Image Scanning Configuration below.
  /// [imageTagMutability] The tag mutability setting for the repository.
  /// [imageTagMutabilityExclusionFilters] Block that defines filters to specify which image tags can override the default tag mutability setting.
  /// [mostRecentImageTags] List of image tags associated with the most recently pushed image in the repository.
  /// [name] Required.
  /// [region] Required.
  /// [registryId] Required.
  /// [repositoryUrl] URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  /// [tags] Map of tags assigned to the resource.
  GetRepositoryResult({
    required this.arn,
    required this.encryptionConfigurations,
    required this.id,
    required this.imageScanningConfigurations,
    required this.imageTagMutability,
    required this.imageTagMutabilityExclusionFilters,
    required this.mostRecentImageTags,
    required this.name,
    required this.region,
    required this.registryId,
    required this.repositoryUrl,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'encryptionConfigurations':
          pulumi.Input.encodeList<
            GetRepositoryEncryptionConfiguration,
            Map<String, dynamic>
          >(encryptionConfigurations, (value) => value.toMap()),
      'id': id,
      'imageScanningConfigurations':
          pulumi.Input.encodeList<
            GetRepositoryImageScanningConfiguration,
            Map<String, dynamic>
          >(imageScanningConfigurations, (value) => value.toMap()),
      'imageTagMutability': imageTagMutability,
      'imageTagMutabilityExclusionFilters':
          pulumi.Input.encodeList<
            GetRepositoryImageTagMutabilityExclusionFilter,
            Map<String, dynamic>
          >(imageTagMutabilityExclusionFilters, (value) => value.toMap()),
      'mostRecentImageTags': mostRecentImageTags,
      'name': name,
      'region': region,
      'registryId': registryId,
      'repositoryUrl': repositoryUrl,
      'tags': tags,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      arn: map['arn'] as String,
      encryptionConfigurations:
          pulumi.Input.decodeList<GetRepositoryEncryptionConfiguration>(
            map['encryptionConfigurations'],
            (value) => GetRepositoryEncryptionConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      imageScanningConfigurations:
          pulumi.Input.decodeList<GetRepositoryImageScanningConfiguration>(
            map['imageScanningConfigurations'],
            (value) => GetRepositoryImageScanningConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      imageTagMutability: map['imageTagMutability'] as String,
      imageTagMutabilityExclusionFilters:
          pulumi
              .Input.decodeList<GetRepositoryImageTagMutabilityExclusionFilter>(
            map['imageTagMutabilityExclusionFilters'],
            (value) => GetRepositoryImageTagMutabilityExclusionFilter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      mostRecentImageTags: (map['mostRecentImageTags'] as List).cast<String>(),
      name: map['name'] as String,
      region: map['region'] as String,
      registryId: map['registryId'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
