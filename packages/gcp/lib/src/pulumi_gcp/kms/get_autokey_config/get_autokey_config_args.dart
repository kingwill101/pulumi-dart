// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAutokeyConfig.
class GetAutokeyConfigArgs {
  /// The folder in which the AutokeyConfig is configured. If it
  /// is not provided, the provider folder is used.
  final pulumi.Input<String> folder;

  GetAutokeyConfigArgs({
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    return map;
  }

  factory GetAutokeyConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetAutokeyConfigArgs(
      folder: pulumi.Input.asInput<String>(map['folder']),
    );
  }
}
