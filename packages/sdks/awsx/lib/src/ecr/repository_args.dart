// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy.dart';
import 'package:pulumi_aws/ecr.dart' as pulumi_aws_ecr;

/// {@template pulumi_ecr_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_ecr_repository_args_doc}
class RepositoryArgs {
  /// Encryption configuration for the repository. See below for schema.
  final pulumi.Input<List<pulumi_aws_ecr.RepositoryEncryptionConfiguration>?>? encryptionConfigurations;
  /// If `true`, will delete the repository even if it contains images.
  /// Defaults to `false`.
  final pulumi.Input<bool?>? forceDelete;
  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  final pulumi.Input<pulumi_aws_ecr.RepositoryImageScanningConfiguration?>? imageScanningConfiguration;
  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  final pulumi.Input<String?>? imageTagMutability;
  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `imageTagMutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final pulumi.Input<List<pulumi_aws_ecr.RepositoryImageTagMutabilityExclusionFilter>?>? imageTagMutabilityExclusionFilters;
  /// A lifecycle policy consists of one or more rules that determine which images in a repository should be expired. If not provided, this will default to untagged images expiring after 1 day.
  final pulumi.Input<LifecyclePolicy?>? lifecyclePolicy;
  /// Name of the repository.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RepositoryArgs].
  /// [encryptionConfigurations] Encryption configuration for the repository. See below for schema.
  /// [forceDelete] If `true`, will delete the repository even if it contains images.
  /// [imageScanningConfiguration] Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  /// [imageTagMutability] The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  /// [imageTagMutabilityExclusionFilters] Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `imageTagMutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  /// [lifecyclePolicy] A lifecycle policy consists of one or more rules that determine which images in a repository should be expired. If not provided, this will default to untagged images expiring after 1 day.
  /// [name] Name of the repository.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const RepositoryArgs({
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
    return <String, dynamic>{
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ecr.RepositoryEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<pulumi_aws_ecr.RepositoryEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDelete': ?forceDelete,
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<pulumi_aws_ecr.RepositoryImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTagMutability': ?imageTagMutability,
      'imageTagMutabilityExclusionFilters': ?pulumi.Input.mapOptionalInputValue<List<pulumi_aws_ecr.RepositoryImageTagMutabilityExclusionFilter>, List<Map<String, dynamic>>>(imageTagMutabilityExclusionFilters, (value) => pulumi.Input.encodeList<pulumi_aws_ecr.RepositoryImageTagMutabilityExclusionFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecyclePolicy': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicy, Map<String, dynamic>>(lifecyclePolicy, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      encryptionConfigurations: (() { final guardedValue = map['encryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<pulumi_aws_ecr.RepositoryEncryptionConfiguration>(guardedValue, (value) => pulumi_aws_ecr.RepositoryEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceDelete: (() { final guardedValue = map['forceDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageScanningConfiguration: (() { final guardedValue = map['imageScanningConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi_aws_ecr.RepositoryImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageTagMutability: (() { final guardedValue = map['imageTagMutability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageTagMutabilityExclusionFilters: (() { final guardedValue = map['imageTagMutabilityExclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<pulumi_aws_ecr.RepositoryImageTagMutabilityExclusionFilter>(guardedValue, (value) => pulumi_aws_ecr.RepositoryImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecyclePolicy: (() { final guardedValue = map['lifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
