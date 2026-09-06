// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_config.dart';

/// Definition of EFSVolumeConfiguration
class EFSVolumeConfiguration {
  /// The authorization configuration details for the Amazon EFS file system. The authorization configuration details for the Amazon EFS file system.
  final pulumi.Input<AuthorizationConfig?>? authorizationConfig;
  /// The Amazon EFS file system ID to use.
  final pulumi.Input<String?>? filesystemId;
  /// The directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is omitted, the root of the Amazon EFS volume will be used. Specifying ``/`` will have the same effect as omitting this parameter.  If an EFS access point is specified in the ``authorizationConfig``, the root directory parameter must either be omitted or set to ``/`` which will enforce the path set on the EFS access point.
  final pulumi.Input<String?>? rootDirectory;
  /// Determines whether to use encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be turned on if Amazon EFS IAM authorization is used. If this parameter is omitted, the default value of ``DISABLED`` is used. For more information, see [Encrypting data in transit](https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html) in the *Amazon Elastic File System User Guide*.
  final pulumi.Input<dynamic>? transitEncryption;
  /// The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses. For more information, see [EFS mount helper](https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html) in the *Amazon Elastic File System User Guide*.
  final pulumi.Input<int?>? transitEncryptionPort;

  /// Creates a new [EFSVolumeConfiguration].
  /// [authorizationConfig] The authorization configuration details for the Amazon EFS file system. The authorization configuration details for the Amazon EFS file system.
  /// [filesystemId] The Amazon EFS file system ID to use.
  /// [rootDirectory] The directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is omitted, the root of the Amazon EFS volume will be used. Specifying ``/`` will have the same effect as omitting this parameter.  If an EFS access point is specified in the ``authorizationConfig``, the root directory parameter must either be omitted or set to ``/`` which will enforce the path set on the EFS access point.
  /// [transitEncryption] Determines whether to use encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be turned on if Amazon EFS IAM authorization is used. If this parameter is omitted, the default value of ``DISABLED`` is used. For more information, see [Encrypting data in transit](https://docs.aws.amazon.com/efs/latest/ug/encryption-in-transit.html) in the *Amazon Elastic File System User Guide*.
  /// [transitEncryptionPort] The port to use when sending encrypted data between the Amazon ECS host and the Amazon EFS server. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses. For more information, see [EFS mount helper](https://docs.aws.amazon.com/efs/latest/ug/efs-mount-helper.html) in the *Amazon Elastic File System User Guide*.
  const EFSVolumeConfiguration({
    this.authorizationConfig,
    this.filesystemId,
    this.rootDirectory,
    this.transitEncryption,
    this.transitEncryptionPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationConfig': ?pulumi.Input.mapOptionalInputValue<AuthorizationConfig, Map<String, dynamic>>(authorizationConfig, (value) => value.toMap()),
      'filesystemId': ?filesystemId,
      'rootDirectory': ?rootDirectory,
      'transitEncryption': ?transitEncryption,
      'transitEncryptionPort': ?transitEncryptionPort,
    };
  }

  factory EFSVolumeConfiguration.fromMap(Map<String, dynamic> map) {
    return EFSVolumeConfiguration(
      authorizationConfig: (() { final guardedValue = map['authorizationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filesystemId: (() { final guardedValue = map['filesystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDirectory: (() { final guardedValue = map['rootDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitEncryption: (() { final guardedValue = map['transitEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      transitEncryptionPort: (() { final guardedValue = map['transitEncryptionPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
