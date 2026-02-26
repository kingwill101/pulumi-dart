// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../notebook_instance_instance_metadata_service_configuration/notebook_instance_instance_metadata_service_configuration.dart';

/// The set of arguments for NotebookInstance.
class NotebookInstanceArgs {
  /// An array of up to three Git repositories to associate with the notebook instance.
  /// These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance.
  final Input<List<String>>? additionalCodeRepositories;

  /// The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  final Input<String>? defaultCodeRepository;

  /// Set to `Disabled` to disable internet access to notebook. Requires <span pulumi-lang-nodejs="`securityGroups`" pulumi-lang-dotnet="`SecurityGroups`" pulumi-lang-go="`securityGroups`" pulumi-lang-python="`security_groups`" pulumi-lang-yaml="`securityGroups`" pulumi-lang-java="`securityGroups`">`security_groups`</span> and <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span> to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  final Input<String>? directInternetAccess;

  /// Information on the IMDS configuration of the notebook instance. Conflicts with <span pulumi-lang-nodejs="`instanceMetadataServiceConfiguration`" pulumi-lang-dotnet="`InstanceMetadataServiceConfiguration`" pulumi-lang-go="`instanceMetadataServiceConfiguration`" pulumi-lang-python="`instance_metadata_service_configuration`" pulumi-lang-yaml="`instanceMetadataServiceConfiguration`" pulumi-lang-java="`instanceMetadataServiceConfiguration`">`instance_metadata_service_configuration`</span>. see details below.
  final Input<NotebookInstanceInstanceMetadataServiceConfiguration>?
      instanceMetadataServiceConfiguration;

  /// The name of ML compute instance type.
  final Input<String> instanceType;

  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  final Input<String>? kmsKeyId;

  /// The name of a lifecycle configuration to associate with the notebook instance.
  final Input<String>? lifecycleConfigName;

  /// The name of the notebook instance (must be unique).
  final Input<String>? name;

  /// The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  final Input<String>? platformIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  final Input<String> roleArn;

  /// Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  final Input<String>? rootAccess;

  /// The associated security groups.
  final Input<List<String>>? securityGroups;

  /// The VPC subnet ID.
  final Input<String>? subnetId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  final Input<int>? volumeSize;

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
      map['instanceMetadataServiceConfiguration'] = Input.mapOptionalInputValue<
              NotebookInstanceInstanceMetadataServiceConfiguration,
              Map<String, dynamic>>(
          instanceMetadataServiceConfigurationValue, (value) => value.toMap());
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
      additionalCodeRepositories: Input.asOptionalInput<List<String>>(
          map['additionalCodeRepositories']),
      defaultCodeRepository:
          Input.asOptionalInput<String>(map['defaultCodeRepository']),
      directInternetAccess:
          Input.asOptionalInput<String>(map['directInternetAccess']),
      instanceMetadataServiceConfiguration: Input.asOptionalInput<
              NotebookInstanceInstanceMetadataServiceConfiguration>(
          map['instanceMetadataServiceConfiguration']),
      instanceType: Input.asInput<String>(map['instanceType']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      lifecycleConfigName:
          Input.asOptionalInput<String>(map['lifecycleConfigName']),
      name: Input.asOptionalInput<String>(map['name']),
      platformIdentifier:
          Input.asOptionalInput<String>(map['platformIdentifier']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      rootAccess: Input.asOptionalInput<String>(map['rootAccess']),
      securityGroups:
          Input.asOptionalInput<List<String>>(map['securityGroups']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      volumeSize: Input.asOptionalInput<int>(map['volumeSize']),
    );
  }
}
