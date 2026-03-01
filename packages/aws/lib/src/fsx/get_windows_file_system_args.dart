// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fsx_get_windows_file_system_get_windows_file_system_args_doc}
/// Arguments for getWindowsFileSystem.
/// {@endtemplate}
/// {@macro pulumi_fsx_get_windows_file_system_get_windows_file_system_args_doc}
class GetWindowsFileSystemArgs {
  /// Identifier of the file system (e.g. `fs-12345678`).
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The tags to associate with the file system.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetWindowsFileSystemArgs].
  /// [id] Identifier of the file system (e.g. `fs-12345678`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags to associate with the file system.
  GetWindowsFileSystemArgs({
    required String id,
    String? region,
    Map<String, String>? tags,
  }) :
      id = pulumi.Input.asInput<String>(id),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetWindowsFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetWindowsFileSystemArgs(
      id: map['id'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

