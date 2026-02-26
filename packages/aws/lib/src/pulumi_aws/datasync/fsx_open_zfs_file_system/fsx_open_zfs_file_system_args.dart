// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../fsx_open_zfs_file_system_protocol/fsx_open_zfs_file_system_protocol.dart';

/// The set of arguments for FsxOpenZfsFileSystem.
class FsxOpenZfsFileSystemArgs {
  /// The Amazon Resource Name (ARN) for the FSx for OpenZfs file system.
  final Input<String> fsxFilesystemArn;

  /// The type of protocol that DataSync uses to access your file system. See below.
  final Input<FsxOpenZfsFileSystemProtocol> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Names (ARNs) of the security groups that are to use to configure the FSx for openzfs file system.
  final Input<List<String>> securityGroupArns;

  /// Subdirectory to perform actions as source or destination. Must start with `/fsx`.
  final Input<String>? subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  FsxOpenZfsFileSystemArgs({
    required this.fsxFilesystemArn,
    required this.protocol,
    this.region,
    required this.securityGroupArns,
    this.subdirectory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fsxFilesystemArn'] = fsxFilesystemArn;
    map['protocol'] =
        Input.mapInputValue<FsxOpenZfsFileSystemProtocol, Map<String, dynamic>>(
            protocol, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupArns'] = securityGroupArns;
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

  factory FsxOpenZfsFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return FsxOpenZfsFileSystemArgs(
      fsxFilesystemArn: Input.asInput<String>(map['fsxFilesystemArn']),
      protocol: Input.asInput<FsxOpenZfsFileSystemProtocol>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupArns: Input.asInput<List<String>>(map['securityGroupArns']),
      subdirectory: Input.asOptionalInput<String>(map['subdirectory']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
