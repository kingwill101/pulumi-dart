// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_folder_folder_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_storage_folder_folder_args_doc}
class FolderArgs {
  /// The name of the bucket that contains the folder.
  final pulumi.Input<String> bucket;

  /// If set to true, items within folder if any will be force destroyed.
  final pulumi.Input<bool>? forceDestroy;

  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  final pulumi.Input<String>? name;

  /// Creates a new [FolderArgs].
  /// [bucket] The name of the bucket that contains the folder.
  /// [forceDestroy] If set to true, items within folder if any will be force destroyed.
  /// [name] The name of the folder expressed as a path. Must include
  FolderArgs({
    required String bucket,
    bool? forceDestroy,
    String? name,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
        name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory FolderArgs.fromMap(Map<String, dynamic> map) {
    return FolderArgs(
      bucket: map['bucket'] as String,
      forceDestroy:
          map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
