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
    this.description,
    this.fileSystemId,
    this.mountTargetDomain,
    this.nasFileSystemName,
    this.officeSiteId,
    this.reset,
    this.status,
  });

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
      officeSiteId: (() {
        final guardedValue = map['officeSiteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reset: (() {
        final guardedValue = map['reset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
