// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings schema for the project
class ProjectSettings {
  /// Default preferences to guide AI behaviors in this project.
  final pulumi.Input<String?>? behaviorPreferences;

  /// Creates a new [ProjectSettings].
  /// [behaviorPreferences] Default preferences to guide AI behaviors in this project.
  const ProjectSettings({
    this.behaviorPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behaviorPreferences': ?behaviorPreferences,
    };
  }

  factory ProjectSettings.fromMap(Map<String, dynamic> map) {
    return ProjectSettings(
      behaviorPreferences: (() { final guardedValue = map['behaviorPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
