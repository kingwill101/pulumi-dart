// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_settings.dart';

/// Project properties
class ProjectProperties {
  /// Settings for the project.
  final pulumi.Input<ProjectSettings>? settings;
  /// Allowed StorageContainers (Control plane resource references).
  final pulumi.Input<List<String>>? storageContainerIds;

  /// Creates a new [ProjectProperties].
  /// [settings] Settings for the project.
  /// [storageContainerIds] Allowed StorageContainers (Control plane resource references).
  const ProjectProperties({
    this.settings,
    this.storageContainerIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'settings': ?pulumi.Input.mapOptionalInputValue<ProjectSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'storageContainerIds': ?storageContainerIds,
    };
  }

  factory ProjectProperties.fromMap(Map<String, dynamic> map) {
    return ProjectProperties(
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageContainerIds: (() { final guardedValue = map['storageContainerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
