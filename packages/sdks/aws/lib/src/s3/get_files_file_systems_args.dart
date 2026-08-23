// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_files_file_systems_file_system.dart';

/// {@template pulumi_s3_get_files_file_systems_get_files_file_systems_args_doc}
/// Arguments for getFilesFileSystems.
/// {@endtemplate}
/// {@macro pulumi_s3_get_files_file_systems_get_files_file_systems_args_doc}
class GetFilesFileSystemsArgs {
  /// List of file systems. See `fileSystems` below.
  final pulumi.Input<List<GetFilesFileSystemsFileSystem>>? fileSystems;
  /// Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFilesFileSystemsArgs].
  /// [fileSystems] List of file systems. See `fileSystems` below.
  /// [region] Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetFilesFileSystemsArgs({
    this.fileSystems,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystems': ?pulumi.Input.mapOptionalInputValue<List<GetFilesFileSystemsFileSystem>, List<Map<String, dynamic>>>(fileSystems, (value) => pulumi.Input.encodeList<GetFilesFileSystemsFileSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetFilesFileSystemsArgs.fromMap(Map<String, dynamic> map) {
    return GetFilesFileSystemsArgs(
      fileSystems: (() { final guardedValue = map['fileSystems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetFilesFileSystemsFileSystem>(guardedValue, (value) => GetFilesFileSystemsFileSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
