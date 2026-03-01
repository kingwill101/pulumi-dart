// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_path_response.dart';

/// IIS virtual application details.
class IISVirtualApplicationDetailsResponse {
  /// Gets or sets the list of directories.
  final List<DirectoryPathResponse>? directories;
  /// Gets the ID.
  final String id;
  /// Gets a value indicating whether the application corresponds to a directory.
  final bool isVirtualDirectory;
  /// Second level entity for virtual directories.
  final DirectoryPathResponse? path;

  /// Creates a new [IISVirtualApplicationDetailsResponse].
  /// [directories] Gets or sets the list of directories.
  /// [id] Gets the ID.
  /// [isVirtualDirectory] Gets a value indicating whether the application corresponds to a directory.
  /// [path] Second level entity for virtual directories.
  IISVirtualApplicationDetailsResponse({
    this.directories,
    required this.id,
    required this.isVirtualDirectory,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directories': ?directories == null ? null : pulumi.Input.encodeList<DirectoryPathResponse, Map<String, dynamic>>(directories!, (value) => value.toMap()),
      'id': id,
      'isVirtualDirectory': isVirtualDirectory,
      'path': ?path == null ? null : path!.toMap(),
    };
  }

  factory IISVirtualApplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IISVirtualApplicationDetailsResponse(
      directories: map['directories'] == null ? null : pulumi.Input.decodeList<DirectoryPathResponse>(map['directories'], (value) => DirectoryPathResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      isVirtualDirectory: map['isVirtualDirectory'] as bool,
      path: map['path'] == null ? null : DirectoryPathResponse.fromMap((map['path'] as Map).cast<String, dynamic>()),
    );
  }
}

