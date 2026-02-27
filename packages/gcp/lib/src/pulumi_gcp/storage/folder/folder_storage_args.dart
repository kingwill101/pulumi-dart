// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Folder.
class FolderStorageArgs {
  /// The name of the bucket that contains the folder.
  final pulumi.Input<String> bucket;

  /// If set to true, items within folder if any will be force destroyed.
  final pulumi.Input<bool>? forceDestroy;

  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  final pulumi.Input<String>? name;

  FolderStorageArgs({
    required this.bucket,
    this.forceDestroy,
    this.name,
  });

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

  factory FolderStorageArgs.fromMap(Map<String, dynamic> map) {
    return FolderStorageArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
