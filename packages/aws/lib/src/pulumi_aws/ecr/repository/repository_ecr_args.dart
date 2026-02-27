// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_encryption_configuration/repository_encryption_configuration.dart';
import '../repository_image_scanning_configuration/repository_image_scanning_configuration.dart';
import '../repository_image_tag_mutability_exclusion_filter/repository_image_tag_mutability_exclusion_filter.dart';

/// The set of arguments for Repository.
class RepositoryEcrArgs {
  /// Encryption configuration for the repository. See below for schema.
  final pulumi.Input<List<RepositoryEncryptionConfiguration>>?
      encryptionConfigurations;

  /// If `true`, will delete the repository even if it contains images.
  /// Defaults to `false`.
  final pulumi.Input<bool>? forceDelete;

  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  final pulumi.Input<RepositoryImageScanningConfiguration>?
      imageScanningConfiguration;

  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  final pulumi.Input<String>? imageTagMutability;

  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final pulumi.Input<List<RepositoryImageTagMutabilityExclusionFilter>>?
      imageTagMutabilityExclusionFilters;

  /// Name of the repository.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  RepositoryEcrArgs({
    this.encryptionConfigurations,
    this.forceDelete,
    this.imageScanningConfiguration,
    this.imageTagMutability,
    this.imageTagMutabilityExclusionFilters,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationsValue = encryptionConfigurations;
    if (encryptionConfigurationsValue != null) {
      map['encryptionConfigurations'] = pulumi.Input.mapOptionalInputValue<
              List<RepositoryEncryptionConfiguration>,
              List<Map<String, dynamic>>>(
          encryptionConfigurationsValue,
          (value) => pulumi.Input.encodeList<RepositoryEncryptionConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final imageScanningConfigurationValue = imageScanningConfiguration;
    if (imageScanningConfigurationValue != null) {
      map['imageScanningConfiguration'] = pulumi.Input.mapOptionalInputValue<
              RepositoryImageScanningConfiguration, Map<String, dynamic>>(
          imageScanningConfigurationValue, (value) => value.toMap());
    }
    final imageTagMutabilityValue = imageTagMutability;
    if (imageTagMutabilityValue != null) {
      map['imageTagMutability'] = imageTagMutabilityValue;
    }
    final imageTagMutabilityExclusionFiltersValue =
        imageTagMutabilityExclusionFilters;
    if (imageTagMutabilityExclusionFiltersValue != null) {
      map['imageTagMutabilityExclusionFilters'] =
          pulumi.Input.mapOptionalInputValue<
                  List<RepositoryImageTagMutabilityExclusionFilter>,
                  List<Map<String, dynamic>>>(
              imageTagMutabilityExclusionFiltersValue,
              (value) => pulumi.Input.encodeList<
                  RepositoryImageTagMutabilityExclusionFilter,
                  Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RepositoryEcrArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryEcrArgs(
      encryptionConfigurations:
          pulumi.Input.asOptionalInput<List<RepositoryEncryptionConfiguration>>(
              map['encryptionConfigurations']),
      forceDelete: pulumi.Input.asOptionalInput<bool>(map['forceDelete']),
      imageScanningConfiguration:
          pulumi.Input.asOptionalInput<RepositoryImageScanningConfiguration>(
              map['imageScanningConfiguration']),
      imageTagMutability:
          pulumi.Input.asOptionalInput<String>(map['imageTagMutability']),
      imageTagMutabilityExclusionFilters: pulumi.Input.asOptionalInput<
              List<RepositoryImageTagMutabilityExclusionFilter>>(
          map['imageTagMutabilityExclusionFilters']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
