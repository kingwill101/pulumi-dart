// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notebook_instance_instance_metadata_service_configuration.dart';

/// Input properties used for looking up and filtering NotebookInstance resources.
class NotebookInstanceState {
  /// An array of up to three Git repositories to associate with the notebook instance.
  /// These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance.
  final pulumi.Input<List<String>>? additionalCodeRepositories;
  /// The Amazon Resource Name (ARN) assigned by AWS to this notebook instance.
  final pulumi.Input<String>? arn;
  /// The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  final pulumi.Input<String>? defaultCodeRepository;
  /// Set to `Disabled` to disable internet access to notebook. Requires `security_groups` and `subnet_id` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  final pulumi.Input<String>? directInternetAccess;
  /// Information on the IMDS configuration of the notebook instance. Conflicts with `instance_metadata_service_configuration`. see details below.
  final pulumi.Input<NotebookInstanceInstanceMetadataServiceConfiguration>? instanceMetadataServiceConfiguration;
  /// The name of ML compute instance type.
  final pulumi.Input<String>? instanceType;
  /// The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of a lifecycle configuration to associate with the notebook instance.
  final pulumi.Input<String>? lifecycleConfigName;
  /// The name of the notebook instance (must be unique).
  final pulumi.Input<String>? name;
  /// The network interface ID that Amazon SageMaker AI created at the time of creating the instance. Only available when setting `subnet_id`.
  final pulumi.Input<String>? networkInterfaceId;
  /// The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  final pulumi.Input<String>? platformIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  final pulumi.Input<String>? roleArn;
  /// Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  final pulumi.Input<String>? rootAccess;
  /// The associated security groups.
  final pulumi.Input<List<String>>? securityGroups;
  /// The VPC subnet ID.
  final pulumi.Input<String>? subnetId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
  final pulumi.Input<String>? url;
  /// The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  final pulumi.Input<int>? volumeSize;

  /// Creates a new [NotebookInstanceState].
  /// [additionalCodeRepositories] An array of up to three Git repositories to associate with the notebook instance.
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this notebook instance.
  /// [defaultCodeRepository] The Git repository associated with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in [AWS CodeCommit](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html) or in any other Git repository.
  /// [directInternetAccess] Set to `Disabled` to disable internet access to notebook. Requires `security_groups` and `subnet_id` to be set. Supported values: `Enabled` (Default) or `Disabled`. If set to `Disabled`, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker AI training and endpoint services unless your configure a NAT Gateway in your VPC.
  /// [instanceMetadataServiceConfiguration] Information on the IMDS configuration of the notebook instance. Conflicts with `instance_metadata_service_configuration`. see details below.
  /// [instanceType] The name of ML compute instance type.
  /// [kmsKeyId] The AWS Key Management Service (AWS KMS) key that Amazon SageMaker AI uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption.
  /// [lifecycleConfigName] The name of a lifecycle configuration to associate with the notebook instance.
  /// [name] The name of the notebook instance (must be unique).
  /// [networkInterfaceId] The network interface ID that Amazon SageMaker AI created at the time of creating the instance. Only available when setting `subnet_id`.
  /// [platformIdentifier] The platform identifier of the notebook instance runtime environment. This value can be either `notebook-al1-v1`(deprecated), `notebook-al2-v1`(deprecated), `notebook-al2-v2`(deprecated), `notebook-al2-v3`, or `notebook-al2023-v1`, depending on which version of Amazon Linux you require. Defaults to `notebook-al2-v3`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of the IAM role to be used by the notebook instance which allows SageMaker AI to call other services on your behalf.
  /// [rootAccess] Whether root access is `Enabled` or `Disabled` for users of the notebook instance. The default value is `Enabled`.
  /// [securityGroups] The associated security groups.
  /// [subnetId] The VPC subnet ID.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [url] The URL that you use to connect to the Jupyter notebook that is running in your notebook instance.
  /// [volumeSize] The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
  NotebookInstanceState({
    pulumi.Output<List<String>>? additionalCodeRepositories,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? defaultCodeRepository,
    pulumi.Output<String>? directInternetAccess,
    pulumi.Output<NotebookInstanceInstanceMetadataServiceConfiguration>? instanceMetadataServiceConfiguration,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? lifecycleConfigName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? platformIdentifier,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? rootAccess,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? url,
    pulumi.Output<int>? volumeSize,
  }) :
      additionalCodeRepositories = pulumi.Input.asOptionalInput<List<String>>(additionalCodeRepositories),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      defaultCodeRepository = pulumi.Input.asOptionalInput<String>(defaultCodeRepository),
      directInternetAccess = pulumi.Input.asOptionalInput<String>(directInternetAccess),
      instanceMetadataServiceConfiguration = pulumi.Input.asOptionalInput<NotebookInstanceInstanceMetadataServiceConfiguration>(instanceMetadataServiceConfiguration),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      lifecycleConfigName = pulumi.Input.asOptionalInput<String>(lifecycleConfigName),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      platformIdentifier = pulumi.Input.asOptionalInput<String>(platformIdentifier),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      rootAccess = pulumi.Input.asOptionalInput<String>(rootAccess),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      url = pulumi.Input.asOptionalInput<String>(url),
      volumeSize = pulumi.Input.asOptionalInput<int>(volumeSize);

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
      additionalCodeRepositories: map['additionalCodeRepositories'] == null ? null : pulumi.Output.create<List<String>>((map['additionalCodeRepositories'] as List).cast<String>()),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      defaultCodeRepository: map['defaultCodeRepository'] == null ? null : pulumi.Output.create<String>(map['defaultCodeRepository'] as String),
      directInternetAccess: map['directInternetAccess'] == null ? null : pulumi.Output.create<String>(map['directInternetAccess'] as String),
      instanceMetadataServiceConfiguration: map['instanceMetadataServiceConfiguration'] == null ? null : pulumi.Output.create<NotebookInstanceInstanceMetadataServiceConfiguration>(NotebookInstanceInstanceMetadataServiceConfiguration.fromMap((map['instanceMetadataServiceConfiguration'] as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      lifecycleConfigName: map['lifecycleConfigName'] == null ? null : pulumi.Output.create<String>(map['lifecycleConfigName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      platformIdentifier: map['platformIdentifier'] == null ? null : pulumi.Output.create<String>(map['platformIdentifier'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      rootAccess: map['rootAccess'] == null ? null : pulumi.Output.create<String>(map['rootAccess'] as String),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      volumeSize: map['volumeSize'] == null ? null : pulumi.Output.create<int>(map['volumeSize'] as int),
    );
  }
}

