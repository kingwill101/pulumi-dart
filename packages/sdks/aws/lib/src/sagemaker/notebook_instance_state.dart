// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_instance_instance_metadata_service_configuration.dart';

/// Input properties used for looking up and filtering NotebookInstance resources.
class NotebookInstanceState {
  /// An array of up to three Git repositories to associate with the notebook instance.
  /// These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance.
  final pulumi.Input<List<String>?>? additionalCodeRepositories;
  /// ARN assigned by AWS to this notebook instance.
  final pulumi.Input<String?>? arn;
  /// The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  final pulumi.Input<String?>? defaultCodeRepository;
  /// Set to `Disabled` to disable internet access to notebook. Requires `securityGroups` and `subnetId` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  final pulumi.Input<String?>? directInternetAccess;
  /// Information on the IMDS configuration of the notebook instance. Conflicts with `instanceMetadataServiceConfiguration`. see details below.
  final pulumi.Input<NotebookInstanceInstanceMetadataServiceConfiguration?>? instanceMetadataServiceConfiguration;
  /// The name of ML compute instance type.
  final pulumi.Input<String?>? instanceType;
  /// KMS key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  final pulumi.Input<String?>? kmsKeyId;
  /// The name of a lifecycle configuration to associate with the notebook instance.
  final pulumi.Input<String?>? lifecycleConfigName;
  /// The name of the notebook instance (must be unique).
  final pulumi.Input<String?>? name;
  /// The network interface ID that Amazon SageMaker AI created at the time of creating the instance. Only available when setting `subnetId`.
  final pulumi.Input<String?>? networkInterfaceId;
  /// The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  final pulumi.Input<String?>? platformIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  final pulumi.Input<String?>? roleArn;
  /// Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  final pulumi.Input<String?>? rootAccess;
  /// The associated security groups.
  final pulumi.Input<List<String>?>? securityGroups;
  /// The VPC subnet ID.
  final pulumi.Input<String?>? subnetId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
  final pulumi.Input<String?>? url;
  /// The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  final pulumi.Input<int?>? volumeSize;

  /// Creates a new [NotebookInstanceState].
  /// [additionalCodeRepositories] An array of up to three Git repositories to associate with the notebook instance.
  /// [arn] ARN assigned by AWS to this notebook instance.
  /// [defaultCodeRepository] The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  /// [directInternetAccess] Set to `Disabled` to disable internet access to notebook. Requires `securityGroups` and `subnetId` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  /// [instanceMetadataServiceConfiguration] Information on the IMDS configuration of the notebook instance. Conflicts with `instanceMetadataServiceConfiguration`. see details below.
  /// [instanceType] The name of ML compute instance type.
  /// [kmsKeyId] KMS key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  /// [lifecycleConfigName] The name of a lifecycle configuration to associate with the notebook instance.
  /// [name] The name of the notebook instance (must be unique).
  /// [networkInterfaceId] The network interface ID that Amazon SageMaker AI created at the time of creating the instance. Only available when setting `subnetId`.
  /// [platformIdentifier] The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  /// [rootAccess] Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  /// [securityGroups] The associated security groups.
  /// [subnetId] The VPC subnet ID.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [url] The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
  /// [volumeSize] The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  const NotebookInstanceState({
    this.additionalCodeRepositories,
    this.arn,
    this.defaultCodeRepository,
    this.directInternetAccess,
    this.instanceMetadataServiceConfiguration,
    this.instanceType,
    this.kmsKeyId,
    this.lifecycleConfigName,
    this.name,
    this.networkInterfaceId,
    this.platformIdentifier,
    this.region,
    this.roleArn,
    this.rootAccess,
    this.securityGroups,
    this.subnetId,
    this.tags,
    this.tagsAll,
    this.url,
    this.volumeSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCodeRepositories': ?additionalCodeRepositories,
      'arn': ?arn,
      'defaultCodeRepository': ?defaultCodeRepository,
      'directInternetAccess': ?directInternetAccess,
      'instanceMetadataServiceConfiguration': ?pulumi.Input.mapOptionalInputValue<NotebookInstanceInstanceMetadataServiceConfiguration, Map<String, dynamic>>(instanceMetadataServiceConfiguration, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'kmsKeyId': ?kmsKeyId,
      'lifecycleConfigName': ?lifecycleConfigName,
      'name': ?name,
      'networkInterfaceId': ?networkInterfaceId,
      'platformIdentifier': ?platformIdentifier,
      'region': ?region,
      'roleArn': ?roleArn,
      'rootAccess': ?rootAccess,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
      'volumeSize': ?volumeSize,
    };
  }

  factory NotebookInstanceState.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceState(
      additionalCodeRepositories: (() { final guardedValue = map['additionalCodeRepositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultCodeRepository: (() { final guardedValue = map['defaultCodeRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directInternetAccess: (() { final guardedValue = map['directInternetAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceMetadataServiceConfiguration: (() { final guardedValue = map['instanceMetadataServiceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NotebookInstanceInstanceMetadataServiceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lifecycleConfigName: (() { final guardedValue = map['lifecycleConfigName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformIdentifier: (() { final guardedValue = map['platformIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootAccess: (() { final guardedValue = map['rootAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeSize: (() { final guardedValue = map['volumeSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
