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
  final pulumi.Input<NotebookInstanceInstanceMetadataServiceConfiguration>? instanceMetadataServiceConfiguration;
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
    this.additionalCodeRepositories,
    this.defaultCodeRepository,
    this.directInternetAccess,
    this.instanceMetadataServiceConfiguration,
    required this.instanceType,
    this.kmsKeyId,
    this.lifecycleConfigName,
    this.name,
    this.platformIdentifier,
    this.region,
    required this.roleArn,
    this.rootAccess,
    this.securityGroups,
    this.subnetId,
    this.tags,
    this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCodeRepositories': ?additionalCodeRepositories,
      'defaultCodeRepository': ?defaultCodeRepository,
      'directInternetAccess': ?directInternetAccess,
      'instanceMetadataServiceConfiguration': ?pulumi.Input.mapOptionalInputValue<NotebookInstanceInstanceMetadataServiceConfiguration, Map<String, dynamic>>(instanceMetadataServiceConfiguration, (value) => value.toMap()),
      'instanceType': instanceType,
      'kmsKeyId': ?kmsKeyId,
      'lifecycleConfigName': ?lifecycleConfigName,
      'name': ?name,
      'platformIdentifier': ?platformIdentifier,
      'region': ?region,
      'roleArn': roleArn,
      'rootAccess': ?rootAccess,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'volumeSize': ?volumeSize,
    };
  }

  factory NotebookInstanceArgs.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceArgs(
      additionalCodeRepositories: map['additionalCodeRepositories'] == null ? null : ((map['additionalCodeRepositories'] as List).cast<String>()).input(),
      defaultCodeRepository: map['defaultCodeRepository'] == null ? null : (map['defaultCodeRepository'] as String).input(),
      directInternetAccess: map['directInternetAccess'] == null ? null : (map['directInternetAccess'] as String).input(),
      instanceMetadataServiceConfiguration: map['instanceMetadataServiceConfiguration'] == null ? null : (NotebookInstanceInstanceMetadataServiceConfiguration.fromMap((map['instanceMetadataServiceConfiguration'] as Map).cast<String, dynamic>())).input(),
      instanceType: (map['instanceType'] as String).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      lifecycleConfigName: map['lifecycleConfigName'] == null ? null : (map['lifecycleConfigName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      platformIdentifier: map['platformIdentifier'] == null ? null : (map['platformIdentifier'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      rootAccess: map['rootAccess'] == null ? null : (map['rootAccess'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups'] as List).cast<String>()).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      volumeSize: map['volumeSize'] == null ? null : (map['volumeSize'] as int).input(),
    );
  }
}

