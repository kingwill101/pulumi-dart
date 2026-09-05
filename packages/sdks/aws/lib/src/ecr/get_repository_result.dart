// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_encryption_configuration.dart';
import 'get_repository_image_scanning_configuration.dart';
import 'get_repository_image_tag_mutability_exclusion_filter.dart';

/// Result data returned by getRepository.
class GetRepositoryResult {
  /// Full ARN of the repository.
  final String? arn;
  /// Encryption configuration for the repository. See Encryption Configuration below.
  final List<GetRepositoryEncryptionConfiguration>? encryptionConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Configuration block that defines image scanning configuration for the repository. See Image Scanning Configuration below.
  final List<GetRepositoryImageScanningConfiguration>? imageScanningConfigurations;
  /// The tag mutability setting for the repository.
  final String? imageTagMutability;
  /// Block that defines filters to specify which image tags can override the default tag mutability setting.
  final List<GetRepositoryImageTagMutabilityExclusionFilter>? imageTagMutabilityExclusionFilters;
  /// List of image tags associated with the most recently pushed image in the repository.
  final List<String>? mostRecentImageTags;
  final String? name;
  final String? region;
  final String? registryId;
  /// URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  final String? repositoryUrl;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetRepositoryResult].
  /// [arn] Full ARN of the repository.
  /// [encryptionConfigurations] Encryption configuration for the repository. See Encryption Configuration below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageScanningConfigurations] Configuration block that defines image scanning configuration for the repository. See Image Scanning Configuration below.
  /// [imageTagMutability] The tag mutability setting for the repository.
  /// [imageTagMutabilityExclusionFilters] Block that defines filters to specify which image tags can override the default tag mutability setting.
  /// [mostRecentImageTags] List of image tags associated with the most recently pushed image in the repository.
  /// [name] Optional.
  /// [region] Optional.
  /// [registryId] Optional.
  /// [repositoryUrl] URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  /// [tags] Map of tags assigned to the resource.
  const GetRepositoryResult({
    this.arn,
    this.encryptionConfigurations,
    this.id,
    this.imageScanningConfigurations,
    this.imageTagMutability,
    this.imageTagMutabilityExclusionFilters,
    this.mostRecentImageTags,
    this.name,
    this.region,
    this.registryId,
    this.repositoryUrl,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'encryptionConfigurations': ?(() { final guardedValue = encryptionConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryEncryptionConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'imageScanningConfigurations': ?(() { final guardedValue = imageScanningConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryImageScanningConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'imageTagMutability': ?imageTagMutability,
      'imageTagMutabilityExclusionFilters': ?(() { final guardedValue = imageTagMutabilityExclusionFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRepositoryImageTagMutabilityExclusionFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mostRecentImageTags': ?mostRecentImageTags,
      'name': ?name,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryUrl': ?repositoryUrl,
      'tags': ?tags,
    };
  }

  factory GetRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionConfigurations: (() { final guardedValue = map['encryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryEncryptionConfiguration>(guardedValue, (value) => GetRepositoryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageScanningConfigurations: (() { final guardedValue = map['imageScanningConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryImageScanningConfiguration>(guardedValue, (value) => GetRepositoryImageScanningConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      imageTagMutability: (() { final guardedValue = map['imageTagMutability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageTagMutabilityExclusionFilters: (() { final guardedValue = map['imageTagMutabilityExclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRepositoryImageTagMutabilityExclusionFilter>(guardedValue, (value) => GetRepositoryImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      mostRecentImageTags: (() { final guardedValue = map['mostRecentImageTags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryUrl: (() { final guardedValue = map['repositoryUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
