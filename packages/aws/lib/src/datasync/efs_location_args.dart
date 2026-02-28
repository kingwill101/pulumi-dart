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
    String? accessPointArn,
    required EfsLocationEc2Config ec2Config,
    required String efsFileSystemArn,
    String? fileSystemAccessRoleArn,
    String? inTransitEncryption,
    String? region,
    String? subdirectory,
    Map<String, String>? tags,
  }) :
      accessPointArn = pulumi.Input.asOptionalInput<String>(accessPointArn),
      ec2Config = pulumi.Input.asInput<EfsLocationEc2Config>(ec2Config),
      efsFileSystemArn = pulumi.Input.asInput<String>(efsFileSystemArn),
      fileSystemAccessRoleArn = pulumi.Input.asOptionalInput<String>(fileSystemAccessRoleArn),
      inTransitEncryption = pulumi.Input.asOptionalInput<String>(inTransitEncryption),
      region = pulumi.Input.asOptionalInput<String>(region),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessPointArn: map['accessPointArn'] == null ? null : map['accessPointArn'] as String,
      ec2Config: EfsLocationEc2Config.fromMap((map['ec2Config'] as Map).cast<String, dynamic>()),
      efsFileSystemArn: map['efsFileSystemArn'] as String,
      fileSystemAccessRoleArn: map['fileSystemAccessRoleArn'] == null ? null : map['fileSystemAccessRoleArn'] as String,
      inTransitEncryption: map['inTransitEncryption'] == null ? null : map['inTransitEncryption'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      subdirectory: map['subdirectory'] == null ? null : map['subdirectory'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

