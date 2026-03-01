// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'efs_location_ec2_config.dart';

/// Input properties used for looking up and filtering EfsLocation resources.
class EfsLocationState {
  /// Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system.
  final pulumi.Input<String>? accessPointArn;
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// Configuration block containing EC2 configurations for connecting to the EFS File System.
  final pulumi.Input<EfsLocationEc2Config>? ec2Config;
  /// Amazon Resource Name (ARN) of EFS File System.
  final pulumi.Input<String>? efsFileSystemArn;
  /// Specifies an Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system.
  final pulumi.Input<String>? fileSystemAccessRoleArn;
  /// Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system. Valid values are `NONE` and `TLS1_2`.
  final pulumi.Input<String>? inTransitEncryption;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Subdirectory to perform actions as source or destination. Default `/`.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? uri;

  /// Creates a new [EfsLocationState].
  /// [accessPointArn] Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system.
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [ec2Config] Configuration block containing EC2 configurations for connecting to the EFS File System.
  /// [efsFileSystemArn] Amazon Resource Name (ARN) of EFS File System.
  /// [fileSystemAccessRoleArn] Specifies an Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system.
  /// [inTransitEncryption] Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system. Valid values are `NONE` and `TLS1_2`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Default `/`.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] Optional.
  EfsLocationState({
    pulumi.Output<String>? accessPointArn,
    pulumi.Output<String>? arn,
    pulumi.Output<EfsLocationEc2Config>? ec2Config,
    pulumi.Output<String>? efsFileSystemArn,
    pulumi.Output<String>? fileSystemAccessRoleArn,
    pulumi.Output<String>? inTransitEncryption,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
  }) :
      accessPointArn = pulumi.Input.asOptionalInput<String>(accessPointArn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      ec2Config = pulumi.Input.asOptionalInput<EfsLocationEc2Config>(ec2Config),
      efsFileSystemArn = pulumi.Input.asOptionalInput<String>(efsFileSystemArn),
      fileSystemAccessRoleArn = pulumi.Input.asOptionalInput<String>(fileSystemAccessRoleArn),
      inTransitEncryption = pulumi.Input.asOptionalInput<String>(inTransitEncryption),
      region = pulumi.Input.asOptionalInput<String>(region),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': ?accessPointArn,
      'arn': ?arn,
      'ec2Config': ?pulumi.Input.mapOptionalInputValue<EfsLocationEc2Config, Map<String, dynamic>>(ec2Config, (value) => value.toMap()),
      'efsFileSystemArn': ?efsFileSystemArn,
      'fileSystemAccessRoleArn': ?fileSystemAccessRoleArn,
      'inTransitEncryption': ?inTransitEncryption,
      'region': ?region,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory EfsLocationState.fromMap(Map<String, dynamic> map) {
    return EfsLocationState(
      accessPointArn: map['accessPointArn'] == null ? null : pulumi.Output.create<String>(map['accessPointArn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      ec2Config: map['ec2Config'] == null ? null : pulumi.Output.create<EfsLocationEc2Config>(EfsLocationEc2Config.fromMap((map['ec2Config'] as Map).cast<String, dynamic>())),
      efsFileSystemArn: map['efsFileSystemArn'] == null ? null : pulumi.Output.create<String>(map['efsFileSystemArn'] as String),
      fileSystemAccessRoleArn: map['fileSystemAccessRoleArn'] == null ? null : pulumi.Output.create<String>(map['fileSystemAccessRoleArn'] as String),
      inTransitEncryption: map['inTransitEncryption'] == null ? null : pulumi.Output.create<String>(map['inTransitEncryption'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

