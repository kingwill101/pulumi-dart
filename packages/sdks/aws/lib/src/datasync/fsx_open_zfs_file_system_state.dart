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
  /// Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [uri] The URL of the FSx for openzfs location that was described.
  FsxOpenZfsFileSystemState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? creationTime,
    pulumi.Output<String>? fsxFilesystemArn,
    pulumi.Output<FsxOpenZfsFileSystemProtocol>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroupArns,
    pulumi.Output<String>? subdirectory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? uri,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      creationTime = pulumi.Input.asOptionalInput<String>(creationTime),
      fsxFilesystemArn = pulumi.Input.asOptionalInput<String>(fsxFilesystemArn),
      protocol = pulumi.Input.asOptionalInput<FsxOpenZfsFileSystemProtocol>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupArns = pulumi.Input.asOptionalInput<List<String>>(securityGroupArns),
      subdirectory = pulumi.Input.asOptionalInput<String>(subdirectory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      uri = pulumi.Input.asOptionalInput<String>(uri);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      creationTime: map['creationTime'] == null ? null : pulumi.Output.create<String>(map['creationTime'] as String),
      fsxFilesystemArn: map['fsxFilesystemArn'] == null ? null : pulumi.Output.create<String>(map['fsxFilesystemArn'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<FsxOpenZfsFileSystemProtocol>(FsxOpenZfsFileSystemProtocol.fromMap((map['protocol'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupArns: map['securityGroupArns'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupArns'] as List).cast<String>()),
      subdirectory: map['subdirectory'] == null ? null : pulumi.Output.create<String>(map['subdirectory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      uri: map['uri'] == null ? null : pulumi.Output.create<String>(map['uri'] as String),
    );
  }
}

