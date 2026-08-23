// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_files_file_systems_file_system.dart';

/// Result data returned by getFilesFileSystems.
class GetFilesFileSystemsResult {
  /// List of file systems. See `fileSystems` below.
  final List<GetFilesFileSystemsFileSystem>? fileSystems;
  final String region;

  /// Creates a new [GetFilesFileSystemsResult].
  /// [fileSystems] List of file systems. See `fileSystems` below.
  /// [region] Required.
  const GetFilesFileSystemsResult({
    this.fileSystems,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystems': ?(() { final guardedValue = fileSystems; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFilesFileSystemsFileSystem, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': region,
    };
  }

  factory GetFilesFileSystemsResult.fromMap(Map<String, dynamic> map) {
    return GetFilesFileSystemsResult(
      fileSystems: (() { final guardedValue = map['fileSystems']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFilesFileSystemsFileSystem>(guardedValue, (value) => GetFilesFileSystemsFileSystem.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: map['region'] as String,
    );
  }
}
