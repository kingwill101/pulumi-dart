// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProjectSettings.
class GetProjectSettingsArgs {
  /// The ID of the project for which to retrieve settings.
  final pulumi.Input<String> project;

  GetProjectSettingsArgs({
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['project'] = project;
    return map;
  }

  factory GetProjectSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectSettingsArgs(
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
