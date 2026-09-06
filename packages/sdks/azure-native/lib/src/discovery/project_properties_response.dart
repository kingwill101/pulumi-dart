// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_settings_response.dart';

/// Project properties
class ProjectPropertiesResponse {
  /// Foundry project endpoint URI.
  final pulumi.Input<String> foundryProjectEndpoint;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Settings for the project.
  final pulumi.Input<ProjectSettingsResponse?>? settings;
  /// Allowed StorageContainers (Control plane resource references).
  final pulumi.Input<List<String>?>? storageContainerIds;

  /// Creates a new [ProjectPropertiesResponse].
  /// [foundryProjectEndpoint] Foundry project endpoint URI.
  /// [provisioningState] The status of the last operation.
  /// [settings] Settings for the project.
  /// [storageContainerIds] Allowed StorageContainers (Control plane resource references).
  const ProjectPropertiesResponse({
    required this.foundryProjectEndpoint,
    required this.provisioningState,
    this.settings,
    this.storageContainerIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'foundryProjectEndpoint': foundryProjectEndpoint,
      'provisioningState': provisioningState,
      'settings': ?pulumi.Input.mapOptionalInputValue<ProjectSettingsResponse, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'storageContainerIds': ?storageContainerIds,
    };
  }

  factory ProjectPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ProjectPropertiesResponse(
      foundryProjectEndpoint: pulumi.Input.fromValue(map['foundryProjectEndpoint'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageContainerIds: (() { final guardedValue = map['storageContainerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
