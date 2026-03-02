// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_path_response.dart';

/// IIS virtual application details.
class IISVirtualApplicationDetailsResponse {
  /// Gets or sets the list of directories.
  final pulumi.Input<List<DirectoryPathResponse>>? directories;
  /// Gets the ID.
  final pulumi.Input<String> id;
  /// Gets a value indicating whether the application corresponds to a directory.
  final pulumi.Input<bool> isVirtualDirectory;
  /// Second level entity for virtual directories.
  final pulumi.Input<DirectoryPathResponse>? path;

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
      'directories': ?pulumi.Input.mapOptionalInputValue<List<DirectoryPathResponse>, List<Map<String, dynamic>>>(directories, (value) => pulumi.Input.encodeList<DirectoryPathResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'isVirtualDirectory': isVirtualDirectory,
      'path': ?pulumi.Input.mapOptionalInputValue<DirectoryPathResponse, Map<String, dynamic>>(path, (value) => value.toMap()),
    };
  }

  factory IISVirtualApplicationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IISVirtualApplicationDetailsResponse(
      directories: map['directories'] == null ? null : (pulumi.Input.decodeList<DirectoryPathResponse>(map['directories']!, (value) => DirectoryPathResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      isVirtualDirectory: (map['isVirtualDirectory'] as bool).input(),
      path: map['path'] == null ? null : (DirectoryPathResponse.fromMap((map['path']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

