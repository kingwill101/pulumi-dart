// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'efs_location_ec2_config.dart';

/// {@template pulumi_datasync_efs_location_efs_location_args_doc}
/// The set of arguments for EfsLocation.
/// {@endtemplate}
/// {@macro pulumi_datasync_efs_location_efs_location_args_doc}
class EfsLocationArgs {
  /// Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system.
  final pulumi.Input<String>? accessPointArn;
  /// Configuration block containing EC2 configurations for connecting to the EFS File System.
  final pulumi.Input<EfsLocationEc2Config> ec2Config;
  /// Amazon Resource Name (ARN) of EFS File System.
  final pulumi.Input<String> efsFileSystemArn;
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

  /// Creates a new [EfsLocationArgs].
  /// [accessPointArn] Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system.
  /// [ec2Config] Configuration block containing EC2 configurations for connecting to the EFS File System.
  /// [efsFileSystemArn] Amazon Resource Name (ARN) of EFS File System.
  /// [fileSystemAccessRoleArn] Specifies an Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system.
  /// [inTransitEncryption] Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system. Valid values are `NONE` and `TLS1_2`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Default `/`.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  EfsLocationArgs({
    this.accessPointArn,
    required this.ec2Config,
    required this.efsFileSystemArn,
    this.fileSystemAccessRoleArn,
    this.inTransitEncryption,
    this.region,
    this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPointArn': ?accessPointArn,
      'ec2Config': pulumi.Input.mapInputValue<EfsLocationEc2Config, Map<String, dynamic>>(ec2Config, (value) => value.toMap()),
      'efsFileSystemArn': efsFileSystemArn,
      'fileSystemAccessRoleArn': ?fileSystemAccessRoleArn,
      'inTransitEncryption': ?inTransitEncryption,
      'region': ?region,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
    };
  }

  factory EfsLocationArgs.fromMap(Map<String, dynamic> map) {
    return EfsLocationArgs(
      accessPointArn: (() { final guardedValue = map['accessPointArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ec2Config: pulumi.Input.fromValue(EfsLocationEc2Config.fromMap((map['ec2Config']! as Map).cast<String, dynamic>())),
      efsFileSystemArn: pulumi.Input.fromValue(map['efsFileSystemArn'] as String),
      fileSystemAccessRoleArn: (() { final guardedValue = map['fileSystemAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inTransitEncryption: (() { final guardedValue = map['inTransitEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subdirectory: (() { final guardedValue = map['subdirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

