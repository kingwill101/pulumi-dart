// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ManagedFolder.
class ManagedFolderArgs {
  /// The name of the bucket that contains the managed folder.
  final pulumi.Input<String> bucket;

  /// Allows the deletion of a managed folder even if contains
  /// objects. If a non-empty managed folder is deleted, any objects
  /// within the folder will remain in a simulated folder with the
  /// same name.
  final pulumi.Input<bool>? forceDestroy;

  /// The name of the managed folder expressed as a path. Must include
  /// trailing '/'. For example, `example_dir/example_dir2/`.
  final pulumi.Input<String>? name;

  ManagedFolderArgs({
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

  factory ManagedFolderArgs.fromMap(Map<String, dynamic> map) {
    return ManagedFolderArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
