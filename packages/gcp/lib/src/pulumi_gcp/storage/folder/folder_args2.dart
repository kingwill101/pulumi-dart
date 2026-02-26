// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Folder.
class FolderArgs2 {
  /// The name of the bucket that contains the folder.
  final Input<String> bucket;

  /// If set to true, items within folder if any will be force destroyed.
  final Input<bool>? forceDestroy;

  /// The name of the folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`, `example@#/`, `a-b/d-f/`.
  final Input<String>? name;

  FolderArgs2({
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

  factory FolderArgs2.fromMap(Map<String, dynamic> map) {
    return FolderArgs2(
      bucket: Input.asInput<String>(map['bucket']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
