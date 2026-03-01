// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NasFileSystem resources.
class NasFileSystemState {
  /// The description of nas file system.
  final pulumi.Input<String>? description;
  /// The filesystem id of nas file system.
  final pulumi.Input<String>? fileSystemId;
  /// The domain of mount target.
  final pulumi.Input<String>? mountTargetDomain;
  /// The name of nas file system.
  final pulumi.Input<String>? nasFileSystemName;
  /// The ID of office site.
  final pulumi.Input<String>? officeSiteId;
  /// The mount point is in an inactive state, reset the mount point of the NAS file system. Default to `false`.
  final pulumi.Input<bool>? reset;
  /// The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  final pulumi.Input<String>? status;

  /// Creates a new [NasFileSystemState].
  /// [description] The description of nas file system.
  /// [fileSystemId] The filesystem id of nas file system.
  /// [mountTargetDomain] The domain of mount target.
  /// [nasFileSystemName] The name of nas file system.
  /// [officeSiteId] The ID of office site.
  /// [reset] The mount point is in an inactive state, reset the mount point of the NAS file system. Default to `false`.
  /// [status] The status of nas file system. Valid values: `Pending`, `Running`, `Stopped`,`Deleting`, `Deleted`, `Invalid`.
  NasFileSystemState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? mountTargetDomain,
    pulumi.Output<String>? nasFileSystemName,
    pulumi.Output<String>? officeSiteId,
    pulumi.Output<bool>? reset,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      mountTargetDomain = pulumi.Input.asOptionalInput<String>(mountTargetDomain),
      nasFileSystemName = pulumi.Input.asOptionalInput<String>(nasFileSystemName),
      officeSiteId = pulumi.Input.asOptionalInput<String>(officeSiteId),
      reset = pulumi.Input.asOptionalInput<bool>(reset),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fileSystemId': ?fileSystemId,
      'mountTargetDomain': ?mountTargetDomain,
      'nasFileSystemName': ?nasFileSystemName,
      'officeSiteId': ?officeSiteId,
      'reset': ?reset,
      'status': ?status,
    };
  }

  factory NasFileSystemState.fromMap(Map<String, dynamic> map) {
    return NasFileSystemState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      mountTargetDomain: map['mountTargetDomain'] == null ? null : pulumi.Output.create<String>(map['mountTargetDomain'] as String),
      nasFileSystemName: map['nasFileSystemName'] == null ? null : pulumi.Output.create<String>(map['nasFileSystemName'] as String),
      officeSiteId: map['officeSiteId'] == null ? null : pulumi.Output.create<String>(map['officeSiteId'] as String),
      reset: map['reset'] == null ? null : pulumi.Output.create<bool>(map['reset'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

