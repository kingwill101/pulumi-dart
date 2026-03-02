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
    this.accessPointArn,
    this.arn,
    this.ec2Config,
    this.efsFileSystemArn,
    this.fileSystemAccessRoleArn,
    this.inTransitEncryption,
    this.region,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
  });

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
      accessPointArn: map['accessPointArn'] == null ? null : (map['accessPointArn'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      ec2Config: map['ec2Config'] == null ? null : (EfsLocationEc2Config.fromMap((map['ec2Config'] as Map).cast<String, dynamic>())).input(),
      efsFileSystemArn: map['efsFileSystemArn'] == null ? null : (map['efsFileSystemArn'] as String).input(),
      fileSystemAccessRoleArn: map['fileSystemAccessRoleArn'] == null ? null : (map['fileSystemAccessRoleArn'] as String).input(),
      inTransitEncryption: map['inTransitEncryption'] == null ? null : (map['inTransitEncryption'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subdirectory: map['subdirectory'] == null ? null : (map['subdirectory'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

