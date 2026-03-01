// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_path.dart';

/// IIS virtual application details.
class IISVirtualApplicationDetails {
  /// Gets or sets the list of directories.
  final List<DirectoryPath>? directories;
  /// Second level entity for virtual directories.
  final DirectoryPath? path;

  /// Creates a new [IISVirtualApplicationDetails].
  /// [directories] Gets or sets the list of directories.
  /// [path] Second level entity for virtual directories.
  IISVirtualApplicationDetails({
    this.directories,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directories': ?directories == null ? null : pulumi.Input.encodeList<DirectoryPath, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'path': ?path == null ? null : path!.toMap(),
    };
  }

  factory IISVirtualApplicationDetails.fromMap(Map<String, dynamic> map) {
    return IISVirtualApplicationDetails(
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<DirectoryPath>(map['directories'], (value) => DirectoryPath.fromMap((value as Map).cast<String, dynamic>())),
      path: map['path'] == null ? null : DirectoryPath.fromMap((map['path'] as Map).cast<String, dynamic>()),
    );
  }
}

