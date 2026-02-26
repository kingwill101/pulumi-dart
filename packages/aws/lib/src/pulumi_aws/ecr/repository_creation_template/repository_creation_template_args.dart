// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_creation_template_encryption_configuration/repository_creation_template_encryption_configuration.dart';
import '../repository_creation_template_image_tag_mutability_exclusion_filter/repository_creation_template_image_tag_mutability_exclusion_filter.dart';

/// The set of arguments for RepositoryCreationTemplate.
class RepositoryCreationTemplateArgs {
  /// Which features this template applies to. Must contain one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  final Input<List<String>> appliedFors;

  /// A custom IAM role to use for repository creation. Required if using repository tags or KMS encryption.
  final Input<String>? customRoleArn;

  /// The description for this template.
  final Input<String>? description;

  /// Encryption configuration for any created repositories. See below for schema.
  final Input<List<RepositoryCreationTemplateEncryptionConfiguration>>?
      encryptionConfigurations;

  /// The tag mutability setting for any created repositories. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  final Input<String>? imageTagMutability;

  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when <span pulumi-lang-nodejs="`imageTagMutability`" pulumi-lang-dotnet="`ImageTagMutability`" pulumi-lang-go="`imageTagMutability`" pulumi-lang-python="`image_tag_mutability`" pulumi-lang-yaml="`imageTagMutability`" pulumi-lang-java="`imageTagMutability`">`image_tag_mutability`</span> is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  final Input<
          List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>>?
      imageTagMutabilityExclusionFilters;

  /// The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the <span pulumi-lang-nodejs="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-dotnet="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-go="`ecr.getLifecyclePolicyDocument`" pulumi-lang-python="`ecr_get_lifecycle_policy_document`" pulumi-lang-yaml="`aws.ecr.getLifecyclePolicyDocument`" pulumi-lang-java="`aws.ecr.getLifecyclePolicyDocument`">`aws.ecr.getLifecyclePolicyDocument`</span><span pulumi-lang-nodejs=" dataSource " pulumi-lang-dotnet=" DataSource " pulumi-lang-go=" dataSource " pulumi-lang-python=" data_source " pulumi-lang-yaml=" dataSource " pulumi-lang-java=" dataSource "> data_source </span>to generate/manage the JSON document used for the <span pulumi-lang-nodejs="`lifecyclePolicy`" pulumi-lang-dotnet="`LifecyclePolicy`" pulumi-lang-go="`lifecyclePolicy`" pulumi-lang-python="`lifecycle_policy`" pulumi-lang-yaml="`lifecyclePolicy`" pulumi-lang-java="`lifecyclePolicy`">`lifecycle_policy`</span> argument.
  final Input<String>? lifecyclePolicy;

  /// The repository name prefix to match against. Use `ROOT` to match any prefix that doesn't explicitly match another template.
  final Input<String> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  final Input<String>? repositoryPolicy;

  /// A map of tags to assign to any created repositories.
  final Input<Map<String, String>>? resourceTags;

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
    final map = <String, dynamic>{};
    map['appliedFors'] = appliedFors;
    final customRoleArnValue = customRoleArn;
    if (customRoleArnValue != null) {
      map['customRoleArn'] = customRoleArnValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionConfigurationsValue = encryptionConfigurations;
    if (encryptionConfigurationsValue != null) {
      map['encryptionConfigurations'] = Input.mapOptionalInputValue<
              List<RepositoryCreationTemplateEncryptionConfiguration>,
              List<Map<String, dynamic>>>(
          encryptionConfigurationsValue,
          (value) => Input.encodeList<
              RepositoryCreationTemplateEncryptionConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final imageTagMutabilityValue = imageTagMutability;
    if (imageTagMutabilityValue != null) {
      map['imageTagMutability'] = imageTagMutabilityValue;
    }
    final imageTagMutabilityExclusionFiltersValue =
        imageTagMutabilityExclusionFilters;
    if (imageTagMutabilityExclusionFiltersValue != null) {
      map['imageTagMutabilityExclusionFilters'] = Input.mapOptionalInputValue<
              List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>,
              List<Map<String, dynamic>>>(
          imageTagMutabilityExclusionFiltersValue,
          (value) => Input.encodeList<
              RepositoryCreationTemplateImageTagMutabilityExclusionFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final lifecyclePolicyValue = lifecyclePolicy;
    if (lifecyclePolicyValue != null) {
      map['lifecyclePolicy'] = lifecyclePolicyValue;
    }
    map['prefix'] = prefix;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final repositoryPolicyValue = repositoryPolicy;
    if (repositoryPolicyValue != null) {
      map['repositoryPolicy'] = repositoryPolicyValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    return map;
  }

  factory RepositoryCreationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryCreationTemplateArgs(
      appliedFors: Input.asInput<List<String>>(map['appliedFors']),
      customRoleArn: Input.asOptionalInput<String>(map['customRoleArn']),
      description: Input.asOptionalInput<String>(map['description']),
      encryptionConfigurations: Input.asOptionalInput<
              List<RepositoryCreationTemplateEncryptionConfiguration>>(
          map['encryptionConfigurations']),
      imageTagMutability:
          Input.asOptionalInput<String>(map['imageTagMutability']),
      imageTagMutabilityExclusionFilters: Input.asOptionalInput<
              List<
                  RepositoryCreationTemplateImageTagMutabilityExclusionFilter>>(
          map['imageTagMutabilityExclusionFilters']),
      lifecyclePolicy: Input.asOptionalInput<String>(map['lifecyclePolicy']),
      prefix: Input.asInput<String>(map['prefix']),
      region: Input.asOptionalInput<String>(map['region']),
      repositoryPolicy: Input.asOptionalInput<String>(map['repositoryPolicy']),
      resourceTags:
          Input.asOptionalInput<Map<String, String>>(map['resourceTags']),
    );
  }
}
