// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_encryption_configuration.dart';
import 'repository_image_scanning_configuration.dart';
import 'repository_image_tag_mutability_exclusion_filter.dart';

/// {@template pulumi_ecr_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_ecr_repository_repository_args_doc}
class RepositoryArgs {
  /// Encryption configuration for the repository. See below for schema.
  final pulumi.Input<List<RepositoryEncryptionConfiguration>>? encryptionConfigurations;
  /// If `true`, will delete the repository even if it contains images.
  /// Defaults to `false`.
  final pulumi.Input<bool>? forceDelete;
  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  final pulumi.Input<RepositoryImageScanningConfiguration>? imageScanningConfiguration;
  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  final pulumi.Input<String>? imageTagMutability;
  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final pulumi.Input<List<RepositoryImageTagMutabilityExclusionFilter>>? imageTagMutabilityExclusionFilters;
  /// Name of the repository.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RepositoryArgs].
  /// [encryptionConfigurations] Encryption configuration for the repository. See below for schema.
  /// [forceDelete] If `true`, will delete the repository even if it contains images.
  /// [imageScanningConfiguration] Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  /// [imageTagMutability] The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  /// [imageTagMutabilityExclusionFilters] Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  /// [name] Name of the repository.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RepositoryArgs({
    List<RepositoryEncryptionConfiguration>? encryptionConfigurations,
    bool? forceDelete,
    RepositoryImageScanningConfiguration? imageScanningConfiguration,
    String? imageTagMutability,
    List<RepositoryImageTagMutabilityExclusionFilter>? imageTagMutabilityExclusionFilters,
    String? name,
    String? region,
    Map<String, String>? tags,
  }) :
      encryptionConfigurations = pulumi.Input.asOptionalInput<List<RepositoryEncryptionConfiguration>>(encryptionConfigurations),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      imageScanningConfiguration = pulumi.Input.asOptionalInput<RepositoryImageScanningConfiguration>(imageScanningConfiguration),
      imageTagMutability = pulumi.Input.asOptionalInput<String>(imageTagMutability),
      imageTagMutabilityExclusionFilters = pulumi.Input.asOptionalInput<List<RepositoryImageTagMutabilityExclusionFilter>>(imageTagMutabilityExclusionFilters),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<RepositoryEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<RepositoryEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDelete': ?forceDelete,
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<RepositoryImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTagMutability': ?imageTagMutability,
      'imageTagMutabilityExclusionFilters': ?pulumi.Input.mapOptionalInputValue<List<RepositoryImageTagMutabilityExclusionFilter>, List<Map<String, dynamic>>>(imageTagMutabilityExclusionFilters, (value) => pulumi.Input.encodeList<RepositoryImageTagMutabilityExclusionFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : pulumi.Input.decodeList<RepositoryEncryptionConfiguration>(map['encryptionConfigurations'], (value) => RepositoryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      forceDelete: map['forceDelete'] == null ? null : map['forceDelete'] as bool,
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : RepositoryImageScanningConfiguration.fromMap((map['imageScanningConfiguration'] as Map).cast<String, dynamic>()),
      imageTagMutability: map['imageTagMutability'] == null ? null : map['imageTagMutability'] as String,
      imageTagMutabilityExclusionFilters: map['imageTagMutabilityExclusionFilters'] == null ? null : pulumi.Input.decodeList<RepositoryImageTagMutabilityExclusionFilter>(map['imageTagMutabilityExclusionFilters'], (value) => RepositoryImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

