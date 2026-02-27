// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../efs_location_ec2_config/efs_location_ec2_config.dart';

/// The set of arguments for EfsLocation.
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
    final map = <String, dynamic>{};
    final accessPointArnValue = accessPointArn;
    if (accessPointArnValue != null) {
      map['accessPointArn'] = accessPointArnValue;
    }
    map['ec2Config'] =
        pulumi.Input.mapInputValue<EfsLocationEc2Config, Map<String, dynamic>>(
            ec2Config, (value) => value.toMap());
    map['efsFileSystemArn'] = efsFileSystemArn;
    final fileSystemAccessRoleArnValue = fileSystemAccessRoleArn;
    if (fileSystemAccessRoleArnValue != null) {
      map['fileSystemAccessRoleArn'] = fileSystemAccessRoleArnValue;
    }
    final inTransitEncryptionValue = inTransitEncryption;
    if (inTransitEncryptionValue != null) {
      map['inTransitEncryption'] = inTransitEncryptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subdirectoryValue = subdirectory;
    if (subdirectoryValue != null) {
      map['subdirectory'] = subdirectoryValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory EfsLocationArgs.fromMap(Map<String, dynamic> map) {
    return EfsLocationArgs(
      accessPointArn:
          pulumi.Input.asOptionalInput<String>(map['accessPointArn']),
      ec2Config: pulumi.Input.asInput<EfsLocationEc2Config>(map['ec2Config']),
      efsFileSystemArn: pulumi.Input.asInput<String>(map['efsFileSystemArn']),
      fileSystemAccessRoleArn:
          pulumi.Input.asOptionalInput<String>(map['fileSystemAccessRoleArn']),
      inTransitEncryption:
          pulumi.Input.asOptionalInput<String>(map['inTransitEncryption']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subdirectory: pulumi.Input.asOptionalInput<String>(map['subdirectory']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
