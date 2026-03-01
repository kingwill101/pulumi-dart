// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_nas_file_system_nas_file_system_args_doc}
/// The set of arguments for NasFileSystem.
/// {@endtemplate}
/// {@macro pulumi_eds_nas_file_system_nas_file_system_args_doc}
class NasFileSystemArgs {
  /// The description of nas file system.
  final pulumi.Input<String>? description;
  /// The filesystem id of nas file system.
  final pulumi.Input<String>? fileSystemId;
  /// The domain of mount target.
  final pulumi.Input<String>? mountTargetDomain;
  /// The name of nas file system.
  final pulumi.Input<String>? nasFileSystemName;
  /// The ID of office site.
  final pulumi.Input<String> officeSiteId;
  /// The mount point is in an inactive state, reset the mount point of the NAS file system. Default to `false`.
  final pulumi.Input<bool>? reset;

  /// Creates a new [NasFileSystemArgs].
  /// [description] The description of nas file system.
  /// [fileSystemId] The filesystem id of nas file system.
  /// [mountTargetDomain] The domain of mount target.
  /// [nasFileSystemName] The name of nas file system.
  /// [officeSiteId] The ID of office site.
  /// [reset] The mount point is in an inactive state, reset the mount point of the NAS file system. Default to `false`.
  NasFileSystemArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? fileSystemId,
    pulumi.Output<String>? mountTargetDomain,
    pulumi.Output<String>? nasFileSystemName,
    required pulumi.Output<String> officeSiteId,
    pulumi.Output<bool>? reset,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      fileSystemId = pulumi.Input.asOptionalInput<String>(fileSystemId),
      mountTargetDomain = pulumi.Input.asOptionalInput<String>(mountTargetDomain),
      nasFileSystemName = pulumi.Input.asOptionalInput<String>(nasFileSystemName),
      officeSiteId = pulumi.Input.asInput<String>(officeSiteId),
      reset = pulumi.Input.asOptionalInput<bool>(reset);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fileSystemId': ?fileSystemId,
      'mountTargetDomain': ?mountTargetDomain,
      'nasFileSystemName': ?nasFileSystemName,
      'officeSiteId': officeSiteId,
      'reset': ?reset,
    };
  }

  factory NasFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return NasFileSystemArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fileSystemId: map['fileSystemId'] == null ? null : pulumi.Output.create<String>(map['fileSystemId'] as String),
      mountTargetDomain: map['mountTargetDomain'] == null ? null : pulumi.Output.create<String>(map['mountTargetDomain'] as String),
      nasFileSystemName: map['nasFileSystemName'] == null ? null : pulumi.Output.create<String>(map['nasFileSystemName'] as String),
      officeSiteId: pulumi.Output.create<String>(map['officeSiteId'] as String),
      reset: map['reset'] == null ? null : pulumi.Output.create<bool>(map['reset'] as bool),
    );
  }
}

