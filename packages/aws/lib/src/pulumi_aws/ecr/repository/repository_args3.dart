// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_encryption_configuration/repository_encryption_configuration.dart';
import '../repository_image_scanning_configuration/repository_image_scanning_configuration.dart';
import '../repository_image_tag_mutability_exclusion_filter/repository_image_tag_mutability_exclusion_filter.dart';

/// The set of arguments for Repository.
class RepositoryArgs3 {
  /// Encryption configuration for the repository. See below for schema.
  final Input<List<RepositoryEncryptionConfiguration>>?
      encryptionConfigurations;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, will delete the repository even if it contains images.
  /// Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? forceDelete;

  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  final Input<RepositoryImageScanningConfiguration>? imageScanningConfiguration;

  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  final Input<String>? imageTagMutability;

  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when <span pulumi-lang-nodejs="`imageTagMutability`" pulumi-lang-dotnet="`ImageTagMutability`" pulumi-lang-go="`imageTagMutability`" pulumi-lang-python="`image_tag_mutability`" pulumi-lang-yaml="`imageTagMutability`" pulumi-lang-java="`imageTagMutability`">`image_tag_mutability`</span> is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final Input<List<RepositoryImageTagMutabilityExclusionFilter>>?
      imageTagMutabilityExclusionFilters;

  /// Name of the repository.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RepositoryArgs3({
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
      map['encryptionConfigurations'] = Input.mapOptionalInputValue<
              List<RepositoryEncryptionConfiguration>,
              List<Map<String, dynamic>>>(
          encryptionConfigurationsValue,
          (value) => Input.encodeList<RepositoryEncryptionConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final imageScanningConfigurationValue = imageScanningConfiguration;
    if (imageScanningConfigurationValue != null) {
      map['imageScanningConfiguration'] = Input.mapOptionalInputValue<
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
      map['imageTagMutabilityExclusionFilters'] = Input.mapOptionalInputValue<
              List<RepositoryImageTagMutabilityExclusionFilter>,
              List<Map<String, dynamic>>>(
          imageTagMutabilityExclusionFiltersValue,
          (value) => Input.encodeList<
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

  factory RepositoryArgs3.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs3(
      encryptionConfigurations:
          Input.asOptionalInput<List<RepositoryEncryptionConfiguration>>(
              map['encryptionConfigurations']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      imageScanningConfiguration:
          Input.asOptionalInput<RepositoryImageScanningConfiguration>(
              map['imageScanningConfiguration']),
      imageTagMutability:
          Input.asOptionalInput<String>(map['imageTagMutability']),
      imageTagMutabilityExclusionFilters: Input.asOptionalInput<
              List<RepositoryImageTagMutabilityExclusionFilter>>(
          map['imageTagMutabilityExclusionFilters']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
