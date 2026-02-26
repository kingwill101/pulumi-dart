// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AutokeyConfig.
class AutokeyConfigArgs {
  /// The folder for which to retrieve config.
  final Input<String> folder;

  /// The target key project for a given folder where KMS Autokey will provision a
  /// CryptoKey for any new KeyHandle the Developer creates. Should have the form
  /// `projects/<project_id_or_number>`.
  final Input<String>? keyProject;

  AutokeyConfigArgs({
    required this.folder,
    this.keyProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folder'] = folder;
    final keyProjectValue = keyProject;
    if (keyProjectValue != null) {
      map['keyProject'] = keyProjectValue;
    }
    return map;
  }

  factory AutokeyConfigArgs.fromMap(Map<String, dynamic> map) {
    return AutokeyConfigArgs(
      folder: Input.asInput<String>(map['folder']),
      keyProject: Input.asOptionalInput<String>(map['keyProject']),
    );
  }
}
