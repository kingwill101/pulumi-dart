// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_instance_instance_metadata_service_configuration.dart';

/// {@template pulumi_sagemaker_notebook_instance_notebook_instance_args_doc}
/// The set of arguments for NotebookInstance.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_notebook_instance_notebook_instance_args_doc}
class NotebookInstanceArgs {
  /// An array of up to three Git repositories to associate with the notebook instance.
  /// These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance.
  final pulumi.Input<List<String>>? additionalCodeRepositories;

  /// The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  final pulumi.Input<String>? defaultCodeRepository;

  /// Set to `Disabled` to disable internet access to notebook. Requires `security_groups` and `subnet_id` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  final pulumi.Input<String>? directInternetAccess;

  /// Information on the IMDS configuration of the notebook instance. Conflicts with `instance_metadata_service_configuration`. see details below.
  final pulumi.Input<NotebookInstanceInstanceMetadataServiceConfiguration>?
      instanceMetadataServiceConfiguration;

  /// The name of ML compute instance type.
  final pulumi.Input<String> instanceType;

  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  final pulumi.Input<String>? kmsKeyId;

  /// The name of a lifecycle configuration to associate with the notebook instance.
  final pulumi.Input<String>? lifecycleConfigName;

  /// The name of the notebook instance (must be unique).
  final pulumi.Input<String>? name;

  /// The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  final pulumi.Input<String>? platformIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  final pulumi.Input<String> roleArn;

  /// Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  final pulumi.Input<String>? rootAccess;

  /// The associated security groups.
  final pulumi.Input<List<String>>? securityGroups;

  /// The VPC subnet ID.
  final pulumi.Input<String>? subnetId;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [NotebookInstanceArgs].
  /// [additionalCodeRepositories] An array of up to three Git repositories to associate with the notebook instance.
  /// [defaultCodeRepository] The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  /// [directInternetAccess] Set to `Disabled` to disable internet access to notebook. Requires `security_groups` and `subnet_id` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  /// [instanceMetadataServiceConfiguration] Information on the IMDS configuration of the notebook instance. Conflicts with `instance_metadata_service_configuration`. see details below.
  /// [instanceType] The name of ML compute instance type.
  /// [kmsKeyId] The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  /// [lifecycleConfigName] The name of a lifecycle configuration to associate with the notebook instance.
  /// [name] The name of the notebook instance (must be unique).
  /// [platformIdentifier] The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  /// [rootAccess] Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  /// [securityGroups] The associated security groups.
  /// [subnetId] The VPC subnet ID.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [volumeSize] The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  NotebookInstanceArgs({
    List<String>? additionalCodeRepositories,
    String? defaultCodeRepository,
    String? directInternetAccess,
    NotebookInstanceInstanceMetadataServiceConfiguration?
        instanceMetadataServiceConfiguration,
    required String instanceType,
    String? kmsKeyId,
    String? lifecycleConfigName,
    String? name,
    String? platformIdentifier,
    String? region,
    required String roleArn,
    String? rootAccess,
    List<String>? securityGroups,
    String? subnetId,
    Map<String, String>? tags,
    int? volumeSize,
  })  : additionalCodeRepositories = pulumi.Input.asOptionalInput<List<String>>(
            additionalCodeRepositories),
        defaultCodeRepository =
            pulumi.Input.asOptionalInput<String>(defaultCodeRepository),
        directInternetAccess =
            pulumi.Input.asOptionalInput<String>(directInternetAccess),
        instanceMetadataServiceConfiguration = pulumi.Input.asOptionalInput<
                NotebookInstanceInstanceMetadataServiceConfiguration>(
            instanceMetadataServiceConfiguration),
        instanceType = pulumi.Input.asInput<String>(instanceType),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        lifecycleConfigName =
            pulumi.Input.asOptionalInput<String>(lifecycleConfigName),
        name = pulumi.Input.asOptionalInput<String>(name),
        platformIdentifier =
            pulumi.Input.asOptionalInput<String>(platformIdentifier),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asInput<String>(roleArn),
        rootAccess = pulumi.Input.asOptionalInput<String>(rootAccess),
        securityGroups =
            pulumi.Input.asOptionalInput<List<String>>(securityGroups),
        subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        volumeSize = pulumi.Input.asOptionalInput<int>(volumeSize);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalCodeRepositoriesValue = additionalCodeRepositories;
    if (additionalCodeRepositoriesValue != null) {
      map['additionalCodeRepositories'] = additionalCodeRepositoriesValue;
    }
    final defaultCodeRepositoryValue = defaultCodeRepository;
    if (defaultCodeRepositoryValue != null) {
      map['defaultCodeRepository'] = defaultCodeRepositoryValue;
    }
    final directInternetAccessValue = directInternetAccess;
    if (directInternetAccessValue != null) {
      map['directInternetAccess'] = directInternetAccessValue;
    }
    final instanceMetadataServiceConfigurationValue =
        instanceMetadataServiceConfiguration;
    if (instanceMetadataServiceConfigurationValue != null) {
      map['instanceMetadataServiceConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  NotebookInstanceInstanceMetadataServiceConfiguration,
                  Map<String, dynamic>>(
              instanceMetadataServiceConfigurationValue,
              (value) => value.toMap());
    }
    map['instanceType'] = instanceType;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final lifecycleConfigNameValue = lifecycleConfigName;
    if (lifecycleConfigNameValue != null) {
      map['lifecycleConfigName'] = lifecycleConfigNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final platformIdentifierValue = platformIdentifier;
    if (platformIdentifierValue != null) {
      map['platformIdentifier'] = platformIdentifierValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final rootAccessValue = rootAccess;
    if (rootAccessValue != null) {
      map['rootAccess'] = rootAccessValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final volumeSizeValue = volumeSize;
    if (volumeSizeValue != null) {
      map['volumeSize'] = volumeSizeValue;
    }
    return map;
  }

  factory NotebookInstanceArgs.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceArgs(
      additionalCodeRepositories: map['additionalCodeRepositories'] == null
          ? null
          : (map['additionalCodeRepositories'] as List).cast<String>(),
      defaultCodeRepository: map['defaultCodeRepository'] == null
          ? null
          : map['defaultCodeRepository'] as String,
      directInternetAccess: map['directInternetAccess'] == null
          ? null
          : map['directInternetAccess'] as String,
      instanceMetadataServiceConfiguration:
          map['instanceMetadataServiceConfiguration'] == null
              ? null
              : NotebookInstanceInstanceMetadataServiceConfiguration.fromMap(
                  (map['instanceMetadataServiceConfiguration'] as Map)
                      .cast<String, dynamic>()),
      instanceType: map['instanceType'] as String,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      lifecycleConfigName: map['lifecycleConfigName'] == null
          ? null
          : map['lifecycleConfigName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      platformIdentifier: map['platformIdentifier'] == null
          ? null
          : map['platformIdentifier'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      rootAccess:
          map['rootAccess'] == null ? null : map['rootAccess'] as String,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      volumeSize: map['volumeSize'] == null ? null : map['volumeSize'] as int,
    );
  }
}
