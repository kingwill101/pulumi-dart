// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings schema for the project
class ProjectSettingsResponse {
  /// Default preferences to guide AI behaviors in this project.
  final pulumi.Input<String>? behaviorPreferences;

  /// Creates a new [ProjectSettingsResponse].
  /// [behaviorPreferences] Default preferences to guide AI behaviors in this project.
  const ProjectSettingsResponse({
    this.behaviorPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorPreferences': ?behaviorPreferences,
    };
  }

  factory ProjectSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProjectSettingsResponse(
      behaviorPreferences: (() { final guardedValue = map['behaviorPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
