// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_point_root_directory_creation_info.dart';

class GetAccessPointRootDirectory {
  /// Single element list containing information on the creation permissions of the directory
  final pulumi.Input<List<GetAccessPointRootDirectoryCreationInfo>> creationInfos;
  /// Path exposed as the root directory
  final pulumi.Input<String> path;

  /// Creates a new [GetAccessPointRootDirectory].
  /// [creationInfos] Single element list containing information on the creation permissions of the directory
  /// [path] Path exposed as the root directory
  GetAccessPointRootDirectory({
    required this.creationInfos,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationInfos': pulumi.Input.mapInputValue<List<GetAccessPointRootDirectoryCreationInfo>, List<Map<String, dynamic>>>(creationInfos, (value) => pulumi.Input.encodeList<GetAccessPointRootDirectoryCreationInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
    };
  }

  factory GetAccessPointRootDirectory.fromMap(Map<String, dynamic> map) {
    return GetAccessPointRootDirectory(
      creationInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccessPointRootDirectoryCreationInfo>(map['creationInfos']!, (value) => GetAccessPointRootDirectoryCreationInfo.fromMap((value as Map).cast<String, dynamic>()))),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

