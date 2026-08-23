// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fsx_open_zfs_file_system_protocol.dart';

/// Input properties used for looking up and filtering FsxOpenZfsFileSystem resources.
class FsxOpenZfsFileSystemState {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  final pulumi.Input<String>? arn;
  /// The time that the FSx for openzfs location was created.
  final pulumi.Input<String>? creationTime;
  /// The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  final pulumi.Input<String>? fsxFilesystemArn;
  /// The type of protocol that DataSync uses to access your file system. See below.
  final pulumi.Input<FsxOpenZfsFileSystemProtocol>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  final pulumi.Input<List<String>>? securityGroupArns;
  /// Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The URL of the FSx for openzfs location that was described.
  final pulumi.Input<String>? uri;

  /// Creates a new [FsxOpenZfsFileSystemState].
  /// [arn] Amazon Resource Name (ARN) of the DataSync Location.
  /// [creationTime] The time that the FSx for openzfs location was created.
  /// [fsxFilesystemArn] The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  /// [protocol] The type of protocol that DataSync uses to access your file system. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [uri] The URL of the FSx for openzfs location that was described.
  const FsxOpenZfsFileSystemState({
    this.arn,
    this.creationTime,
    this.fsxFilesystemArn,
    this.protocol,
    this.region,
    this.securityGroupArns,
    this.subdirectory,
    this.tags,
    this.tagsAll,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'creationTime': ?creationTime,
      'fsxFilesystemArn': ?fsxFilesystemArn,
      'protocol': ?pulumi.Input.mapOptionalInputValue<FsxOpenZfsFileSystemProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'region': ?region,
      'securityGroupArns': ?securityGroupArns,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'uri': ?uri,
    };
  }

  factory FsxOpenZfsFileSystemState.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fsxFilesystemArn: (() { final guardedValue = map['fsxFilesystemArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FsxOpenZfsFileSystemProtocol.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupArns: (() { final guardedValue = map['securityGroupArns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subdirectory: (() { final guardedValue = map['subdirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
