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
  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `imageTagMutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final pulumi.Input<List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>>? imageTagMutabilityExclusionFilters;
  /// The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` dataSource to generate/manage the JSON document used for the `lifecyclePolicy` argument.
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
  /// [imageTagMutabilityExclusionFilters] Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `imageTagMutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  /// [lifecyclePolicy] The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` dataSource to generate/manage the JSON document used for the `lifecyclePolicy` argument.
  /// [prefix] The repository name prefix to match against. Use `ROOT` to match any prefix that doesn't explicitly match another template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryPolicy] The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  /// [resourceTags] A map of tags to assign to any created repositories.
  const RepositoryCreationTemplateArgs({
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
      appliedFors: pulumi.Input.fromValue((map['appliedFors'] as List).cast<String>()),
      customRoleArn: (() { final guardedValue = map['customRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfigurations: (() { final guardedValue = map['encryptionConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryCreationTemplateEncryptionConfiguration>(guardedValue, (value) => RepositoryCreationTemplateEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageTagMutability: (() { final guardedValue = map['imageTagMutability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageTagMutabilityExclusionFilters: (() { final guardedValue = map['imageTagMutabilityExclusionFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>(guardedValue, (value) => RepositoryCreationTemplateImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lifecyclePolicy: (() { final guardedValue = map['lifecyclePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryPolicy: (() { final guardedValue = map['repositoryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
