// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'lifecycle_policy.dart';

/// The set of arguments for Repository.
class RepositoryArgs {
  /// Encryption configuration for the repository. See below for schema.
  final Input<List<Map<String, dynamic>>>? encryptionConfigurations;

  /// If `true`, will delete the repository even if it contains images.
  /// Defaults to `false`.
  final Input<bool>? forceDelete;

  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  final Input<Map<String, dynamic>>? imageScanningConfiguration;

  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  final Input<String>? imageTagMutability;

  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final Input<List<Map<String, dynamic>>>? imageTagMutabilityExclusionFilters;

  /// A lifecycle policy consists of one or more rules that determine which images in a repository should be expired. If not provided, this will default to untagged images expiring after 1 day.
  final Input<LifecyclePolicy>? lifecyclePolicy;

  /// Name of the repository.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RepositoryArgs({
    this.encryptionConfigurations,
    this.forceDelete,
    this.imageScanningConfiguration,
    this.imageTagMutability,
    this.imageTagMutabilityExclusionFilters,
    this.lifecyclePolicy,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionConfigurationsValue = encryptionConfigurations;
    if (encryptionConfigurationsValue != null) {
      map['encryptionConfigurations'] = encryptionConfigurationsValue;
    }
    final forceDeleteValue = forceDelete;
    if (forceDeleteValue != null) {
      map['forceDelete'] = forceDeleteValue;
    }
    final imageScanningConfigurationValue = imageScanningConfiguration;
    if (imageScanningConfigurationValue != null) {
      map['imageScanningConfiguration'] = imageScanningConfigurationValue;
    }
    final imageTagMutabilityValue = imageTagMutability;
    if (imageTagMutabilityValue != null) {
      map['imageTagMutability'] = imageTagMutabilityValue;
    }
    final imageTagMutabilityExclusionFiltersValue =
        imageTagMutabilityExclusionFilters;
    if (imageTagMutabilityExclusionFiltersValue != null) {
      map['imageTagMutabilityExclusionFilters'] =
          imageTagMutabilityExclusionFiltersValue;
    }
    final lifecyclePolicyValue = lifecyclePolicy;
    if (lifecyclePolicyValue != null) {
      map['lifecyclePolicy'] =
          Input.mapOptionalInputValue<LifecyclePolicy, Map<String, dynamic>>(
              lifecyclePolicyValue, (value) => value.toMap());
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

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      encryptionConfigurations:
          Input.asOptionalInput<List<Map<String, dynamic>>>(
              map['encryptionConfigurations']),
      forceDelete: Input.asOptionalInput<bool>(map['forceDelete']),
      imageScanningConfiguration: Input.asOptionalInput<Map<String, dynamic>>(
          map['imageScanningConfiguration']),
      imageTagMutability:
          Input.asOptionalInput<String>(map['imageTagMutability']),
      imageTagMutabilityExclusionFilters:
          Input.asOptionalInput<List<Map<String, dynamic>>>(
              map['imageTagMutabilityExclusionFilters']),
      lifecyclePolicy:
          Input.asOptionalInput<LifecyclePolicy>(map['lifecyclePolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
