// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFolderSettings.
class GetFolderSettingsArgs {
  /// The ID of the folder for which to retrieve settings.
  final Input<String> folder;

  GetFolderSettingsArgs({
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    return map;
  }

  factory GetFolderSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderSettingsArgs(
      folder: Input.asInput<String>(map['folder']),
    );
  }
}
