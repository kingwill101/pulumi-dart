// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fsx_open_zfs_file_system_protocol.dart';

/// {@template pulumi_datasync_fsx_open_zfs_file_system_fsx_open_zfs_file_system_args_doc}
/// The set of arguments for FsxOpenZfsFileSystem.
/// {@endtemplate}
/// {@macro pulumi_datasync_fsx_open_zfs_file_system_fsx_open_zfs_file_system_args_doc}
class FsxOpenZfsFileSystemArgs {
  /// The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  final pulumi.Input<String> fsxFilesystemArn;
  /// The type of protocol that DataSync uses to access your file system. See below.
  final pulumi.Input<FsxOpenZfsFileSystemProtocol> protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  final pulumi.Input<List<String>> securityGroupArns;
  /// Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  final pulumi.Input<String>? subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FsxOpenZfsFileSystemArgs].
  /// [fsxFilesystemArn] The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  /// [protocol] The type of protocol that DataSync uses to access your file system. See below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupArns] The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  /// [subdirectory] Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  FsxOpenZfsFileSystemArgs({
    required pulumi.Output<String> fsxFilesystemArn,
    required pulumi.Output<FsxOpenZfsFileSystemProtocol> protocol,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> securityGroupArns,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      fsxFilesystemArn = pulumi.Input.asInput<String>(fsxFilesystemArn),
      protocol = pulumi.Input.asInput<FsxOpenZfsFileSystemProtocol>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupArns = pulumi.Input.asInput<List<String>>(securityGroupArns),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsxFilesystemArn': fsxFilesystemArn,
      'protocol': pulumi.Input.mapInputValue<FsxOpenZfsFileSystemProtocol, Map<String, dynamic>>(protocol, (value) => value.toMap()),
      'region': ?region,
      'securityGroupArns': securityGroupArns,
      'subdirectory': ?subdirectory,
      'tags': ?tags,
    };
  }

  factory FsxOpenZfsFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemArgs(
      fsxFilesystemArn: pulumi.Output.create<String>(map['fsxFilesystemArn'] as String),
      protocol: pulumi.Output.create<FsxOpenZfsFileSystemProtocol>(FsxOpenZfsFileSystemProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupArns: pulumi.Output.create<List<String>>((map['securityGroupArns'] as List).cast<String>()),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

