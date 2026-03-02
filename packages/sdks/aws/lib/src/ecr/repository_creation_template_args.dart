// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_creation_template_encryption_configuration.dart';
import 'repository_creation_template_image_tag_mutability_exclusion_filter.dart';

/// {@template pulumi_ecr_repository_creation_template_repository_creation_template_args_doc}
/// The set of arguments for RepositoryCreationTemplate.
/// {@endtemplate}
/// {@macro pulumi_ecr_repository_creation_template_repository_creation_template_args_doc}
class RepositoryCreationTemplateArgs {
  /// Which features this template applies to. Must contain one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  final pulumi.Input<List<String>> appliedFors;
  /// A custom IAM role to use for repository creation. Required if using repository tags or KMS encryption.
  final pulumi.Input<String>? customRoleArn;
  /// The description for this template.
  final pulumi.Input<String>? description;
  /// Encryption configuration for any created repositories. See below for schema.
  final pulumi.Input<List<RepositoryCreationTemplateEncryptionConfiguration>>? encryptionConfigurations;
  /// The tag mutability setting for any created repositories. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  final pulumi.Input<String>? imageTagMutability;
  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final pulumi.Input<List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>>? imageTagMutabilityExclusionFilters;
  /// The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` data_source to generate/manage the JSON document used for the `lifecycle_policy` argument.
  final pulumi.Input<String>? lifecyclePolicy;
  /// The repository name prefix to match against. Use `ROOT` to match any prefix that doesn't explicitly match another template.
  final pulumi.Input<String> prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  final pulumi.Input<String>? repositoryPolicy;
  /// A map of tags to assign to any created repositories.
  final pulumi.Input<Map<String, String>>? resourceTags;

  /// Creates a new [RepositoryCreationTemplateArgs].
  /// [appliedFors] Which features this template applies to. Must contain one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  /// [customRoleArn] A custom IAM role to use for repository creation. Required if using repository tags or KMS encryption.
  /// [description] The description for this template.
  /// [encryptionConfigurations] Encryption configuration for any created repositories. See below for schema.
  /// [imageTagMutability] The tag mutability setting for any created repositories. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  /// [imageTagMutabilityExclusionFilters] Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  /// [lifecyclePolicy] The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` data_source to generate/manage the JSON document used for the `lifecycle_policy` argument.
  /// [prefix] The repository name prefix to match against. Use `ROOT` to match any prefix that doesn't explicitly match another template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryPolicy] The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  /// [resourceTags] A map of tags to assign to any created repositories.
  RepositoryCreationTemplateArgs({
    required this.appliedFors,
    this.customRoleArn,
    this.description,
    this.encryptionConfigurations,
    this.imageTagMutability,
    this.imageTagMutabilityExclusionFilters,
    this.lifecyclePolicy,
    required this.prefix,
    this.region,
    this.repositoryPolicy,
    this.resourceTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedFors': appliedFors,
      'customRoleArn': ?customRoleArn,
      'description': ?description,
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<RepositoryCreationTemplateEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<RepositoryCreationTemplateEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageTagMutability': ?imageTagMutability,
      'imageTagMutabilityExclusionFilters': ?pulumi.Input.mapOptionalInputValue<List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>, List<Map<String, dynamic>>>(imageTagMutabilityExclusionFilters, (value) => pulumi.Input.encodeList<RepositoryCreationTemplateImageTagMutabilityExclusionFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecyclePolicy': ?lifecyclePolicy,
      'prefix': prefix,
      'region': ?region,
      'repositoryPolicy': ?repositoryPolicy,
      'resourceTags': ?resourceTags,
    };
  }

  factory RepositoryCreationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryCreationTemplateArgs(
      appliedFors: ((map['appliedFors'] as List).cast<String>()).input(),
      customRoleArn: map['customRoleArn'] == null ? null : ((map['customRoleArn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : ((pulumi.Input.decodeList<RepositoryCreationTemplateEncryptionConfiguration>(map['encryptionConfigurations']!, (value) => RepositoryCreationTemplateEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      imageTagMutability: map['imageTagMutability'] == null ? null : ((map['imageTagMutability'] as String).input()).input(),
      imageTagMutabilityExclusionFilters: map['imageTagMutabilityExclusionFilters'] == null ? null : ((pulumi.Input.decodeList<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>(map['imageTagMutabilityExclusionFilters']!, (value) => RepositoryCreationTemplateImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      lifecyclePolicy: map['lifecyclePolicy'] == null ? null : ((map['lifecyclePolicy'] as String).input()).input(),
      prefix: (map['prefix'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      repositoryPolicy: map['repositoryPolicy'] == null ? null : ((map['repositoryPolicy'] as String).input()).input(),
      resourceTags: map['resourceTags'] == null ? null : (((map['resourceTags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

