// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_files_file_system_get_files_file_system_args_doc}
/// Arguments for getFilesFileSystem.
/// {@endtemplate}
/// {@macro pulumi_s3_get_files_file_system_get_files_file_system_args_doc}
class GetFilesFileSystemArgs {
  /// Identifier of the file system.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> id;
  /// Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetFilesFileSystemArgs].
  /// [id] Identifier of the file system.
  /// [region] Region where this data source will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetFilesFileSystemArgs({
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
    };
  }

  factory GetFilesFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetFilesFileSystemArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
