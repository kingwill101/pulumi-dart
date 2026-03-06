// ignore_for_file: unused_element, unnecessary_cast

import 'dev_center_project_catalog_settings_response.dart';
import 'project_network_settings_response.dart';

/// Result data returned by getProjectInheritedSettings.
class GetProjectInheritedSettingsResult {
  /// Network settings that will be enforced on this project.
  final ProjectNetworkSettingsResponse networkSettings;
  /// Dev Center settings to be used when associating a project with a catalog.
  final DevCenterProjectCatalogSettingsResponse projectCatalogSettings;

  /// Creates a new [GetProjectInheritedSettingsResult].
  /// [networkSettings] Network settings that will be enforced on this project.
  /// [projectCatalogSettings] Dev Center settings to be used when associating a project with a catalog.
  const GetProjectInheritedSettingsResult({
    required this.networkSettings,
    required this.projectCatalogSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkSettings': networkSettings.toMap(),
      'projectCatalogSettings': projectCatalogSettings.toMap(),
    };
  }

  factory GetProjectInheritedSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectInheritedSettingsResult(
      networkSettings: ProjectNetworkSettingsResponse.fromMap((map['networkSettings']! as Map).cast<String, dynamic>()),
      projectCatalogSettings: DevCenterProjectCatalogSettingsResponse.fromMap((map['projectCatalogSettings']! as Map).cast<String, dynamic>()),
    );
  }
}

