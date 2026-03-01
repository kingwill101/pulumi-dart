// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_encryption_configuration.dart';
import 'repository_image_scanning_configuration.dart';
import 'repository_image_tag_mutability_exclusion_filter.dart';

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// Full ARN of the repository.
  final pulumi.Input<String>? arn;
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
  /// The registry ID where the repository was created.
  final pulumi.Input<String>? registryId;
  /// The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  final pulumi.Input<String>? repositoryUrl;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RepositoryState].
  /// [arn] Full ARN of the repository.
  /// [encryptionConfigurations] Encryption configuration for the repository. See below for schema.
  /// [forceDelete] If `true`, will delete the repository even if it contains images.
  /// [imageScanningConfiguration] Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  /// [imageTagMutability] The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  /// [imageTagMutabilityExclusionFilters] Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  /// [name] Name of the repository.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the repository was created.
  /// [repositoryUrl] The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RepositoryState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<RepositoryEncryptionConfiguration>>? encryptionConfigurations,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<RepositoryImageScanningConfiguration>? imageScanningConfiguration,
    pulumi.Output<String>? imageTagMutability,
    pulumi.Output<List<RepositoryImageTagMutabilityExclusionFilter>>? imageTagMutabilityExclusionFilters,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
    pulumi.Output<String>? repositoryUrl,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      encryptionConfigurations = pulumi.Input.asOptionalInput<List<RepositoryEncryptionConfiguration>>(encryptionConfigurations),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      imageScanningConfiguration = pulumi.Input.asOptionalInput<RepositoryImageScanningConfiguration>(imageScanningConfiguration),
      imageTagMutability = pulumi.Input.asOptionalInput<String>(imageTagMutability),
      imageTagMutabilityExclusionFilters = pulumi.Input.asOptionalInput<List<RepositoryImageTagMutabilityExclusionFilter>>(imageTagMutabilityExclusionFilters),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      repositoryUrl = pulumi.Input.asOptionalInput<String>(repositoryUrl),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<RepositoryEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<RepositoryEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDelete': ?forceDelete,
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<RepositoryImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTagMutability': ?imageTagMutability,
      'imageTagMutabilityExclusionFilters': ?pulumi.Input.mapOptionalInputValue<List<RepositoryImageTagMutabilityExclusionFilter>, List<Map<String, dynamic>>>(imageTagMutabilityExclusionFilters, (value) => pulumi.Input.encodeList<RepositoryImageTagMutabilityExclusionFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryUrl': ?repositoryUrl,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : pulumi.Output.create<List<RepositoryEncryptionConfiguration>>(pulumi.Input.decodeList<RepositoryEncryptionConfiguration>(map['encryptionConfigurations'], (value) => RepositoryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : pulumi.Output.create<RepositoryImageScanningConfiguration>(RepositoryImageScanningConfiguration.fromMap((map['imageScanningConfiguration'] as Map).cast<String, dynamic>())),
      imageTagMutability: map['imageTagMutability'] == null ? null : pulumi.Output.create<String>(map['imageTagMutability'] as String),
      imageTagMutabilityExclusionFilters: map['imageTagMutabilityExclusionFilters'] == null ? null : pulumi.Output.create<List<RepositoryImageTagMutabilityExclusionFilter>>(pulumi.Input.decodeList<RepositoryImageTagMutabilityExclusionFilter>(map['imageTagMutabilityExclusionFilters'], (value) => RepositoryImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
      repositoryUrl: map['repositoryUrl'] == null ? null : pulumi.Output.create<String>(map['repositoryUrl'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

