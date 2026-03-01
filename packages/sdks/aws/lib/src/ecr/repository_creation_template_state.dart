// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_creation_template_encryption_configuration.dart';
import 'repository_creation_template_image_tag_mutability_exclusion_filter.dart';

/// Input properties used for looking up and filtering RepositoryCreationTemplate resources.
class RepositoryCreationTemplateState {
  /// Which features this template applies to. Must contain one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  final pulumi.Input<List<String>>? appliedFors;
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
  final pulumi.Input<String>? prefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry ID the repository creation template applies to.
  final pulumi.Input<String>? registryId;
  /// The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  final pulumi.Input<String>? repositoryPolicy;
  /// A map of tags to assign to any created repositories.
  final pulumi.Input<Map<String, String>>? resourceTags;

  /// Creates a new [RepositoryCreationTemplateState].
  /// [appliedFors] Which features this template applies to. Must contain one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  /// [customRoleArn] A custom IAM role to use for repository creation. Required if using repository tags or KMS encryption.
  /// [description] The description for this template.
  /// [encryptionConfigurations] Encryption configuration for any created repositories. See below for schema.
  /// [imageTagMutability] The tag mutability setting for any created repositories. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  /// [imageTagMutabilityExclusionFilters] Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  /// [lifecyclePolicy] The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` data_source to generate/manage the JSON document used for the `lifecycle_policy` argument.
  /// [prefix] The repository name prefix to match against. Use `ROOT` to match any prefix that doesn't explicitly match another template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID the repository creation template applies to.
  /// [repositoryPolicy] The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  /// [resourceTags] A map of tags to assign to any created repositories.
  RepositoryCreationTemplateState({
    pulumi.Output<List<String>>? appliedFors,
    pulumi.Output<String>? customRoleArn,
    pulumi.Output<String>? description,
    pulumi.Output<List<RepositoryCreationTemplateEncryptionConfiguration>>? encryptionConfigurations,
    pulumi.Output<String>? imageTagMutability,
    pulumi.Output<List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>>? imageTagMutabilityExclusionFilters,
    pulumi.Output<String>? lifecyclePolicy,
    pulumi.Output<String>? prefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
    pulumi.Output<String>? repositoryPolicy,
    pulumi.Output<Map<String, String>>? resourceTags,
  }) :
      appliedFors = pulumi.Input.asOptionalInput<List<String>>(appliedFors),
      customRoleArn = pulumi.Input.asOptionalInput<String>(customRoleArn),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionConfigurations = pulumi.Input.asOptionalInput<List<RepositoryCreationTemplateEncryptionConfiguration>>(encryptionConfigurations),
      imageTagMutability = pulumi.Input.asOptionalInput<String>(imageTagMutability),
      imageTagMutabilityExclusionFilters = pulumi.Input.asOptionalInput<List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>>(imageTagMutabilityExclusionFilters),
      lifecyclePolicy = pulumi.Input.asOptionalInput<String>(lifecyclePolicy),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      repositoryPolicy = pulumi.Input.asOptionalInput<String>(repositoryPolicy),
      resourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appliedFors': ?appliedFors,
      'customRoleArn': ?customRoleArn,
      'description': ?description,
      'encryptionConfigurations': ?pulumi.Input.mapOptionalInputValue<List<RepositoryCreationTemplateEncryptionConfiguration>, List<Map<String, dynamic>>>(encryptionConfigurations, (value) => pulumi.Input.encodeList<RepositoryCreationTemplateEncryptionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageTagMutability': ?imageTagMutability,
      'imageTagMutabilityExclusionFilters': ?pulumi.Input.mapOptionalInputValue<List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>, List<Map<String, dynamic>>>(imageTagMutabilityExclusionFilters, (value) => pulumi.Input.encodeList<RepositoryCreationTemplateImageTagMutabilityExclusionFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecyclePolicy': ?lifecyclePolicy,
      'prefix': ?prefix,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryPolicy': ?repositoryPolicy,
      'resourceTags': ?resourceTags,
    };
  }

  factory RepositoryCreationTemplateState.fromMap(Map<String, dynamic> map) {
    return RepositoryCreationTemplateState(
      appliedFors: map['appliedFors'] == null ? null : pulumi.Output.create<List<String>>((map['appliedFors'] as List).cast<String>()),
      customRoleArn: map['customRoleArn'] == null ? null : pulumi.Output.create<String>(map['customRoleArn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptionConfigurations: map['encryptionConfigurations'] == null ? null : pulumi.Output.create<List<RepositoryCreationTemplateEncryptionConfiguration>>(pulumi.Input.decodeList<RepositoryCreationTemplateEncryptionConfiguration>(map['encryptionConfigurations'], (value) => RepositoryCreationTemplateEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      imageTagMutability: map['imageTagMutability'] == null ? null : pulumi.Output.create<String>(map['imageTagMutability'] as String),
      imageTagMutabilityExclusionFilters: map['imageTagMutabilityExclusionFilters'] == null ? null : pulumi.Output.create<List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>>(pulumi.Input.decodeList<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>(map['imageTagMutabilityExclusionFilters'], (value) => RepositoryCreationTemplateImageTagMutabilityExclusionFilter.fromMap((value as Map).cast<String, dynamic>()))),
      lifecyclePolicy: map['lifecyclePolicy'] == null ? null : pulumi.Output.create<String>(map['lifecyclePolicy'] as String),
      prefix: map['prefix'] == null ? null : pulumi.Output.create<String>(map['prefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
      repositoryPolicy: map['repositoryPolicy'] == null ? null : pulumi.Output.create<String>(map['repositoryPolicy'] as String),
      resourceTags: map['resourceTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['resourceTags'] as Map).cast<String, String>()),
    );
  }
}

