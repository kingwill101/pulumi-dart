// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings to be used when associating a project with a catalog.
class ProjectCatalogSettingsResponse {
  /// Indicates catalog item types that can be synced.
  final pulumi.Input<List<String>>? catalogItemSyncTypes;

  /// Creates a new [ProjectCatalogSettingsResponse].
  /// [catalogItemSyncTypes] Indicates catalog item types that can be synced.
  const ProjectCatalogSettingsResponse({
    this.catalogItemSyncTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogItemSyncTypes': ?catalogItemSyncTypes,
    };
  }

  factory ProjectCatalogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProjectCatalogSettingsResponse(
      catalogItemSyncTypes: (() { final guardedValue = map['catalogItemSyncTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
