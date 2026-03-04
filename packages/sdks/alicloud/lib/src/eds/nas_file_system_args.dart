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
    this.description,
    this.fileSystemId,
    this.mountTargetDomain,
    this.nasFileSystemName,
    required this.officeSiteId,
    this.reset,
  });

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileSystemId: (() {
        final guardedValue = map['fileSystemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountTargetDomain: (() {
        final guardedValue = map['mountTargetDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nasFileSystemName: (() {
        final guardedValue = map['nasFileSystemName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      officeSiteId: pulumi.Input.fromValue(map['officeSiteId'] as String),
      reset: (() {
        final guardedValue = map['reset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
