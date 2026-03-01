// ignore_for_file: unused_element, unnecessary_cast


/// Settings to be used when associating a project with a catalog.
class ProjectCatalogSettingsResponse {
  /// Indicates catalog item types that can be synced.
  final List<String>? catalogItemSyncTypes;

  /// Creates a new [ProjectCatalogSettingsResponse].
  /// [catalogItemSyncTypes] Indicates catalog item types that can be synced.
  ProjectCatalogSettingsResponse({
    this.catalogItemSyncTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogItemSyncTypes': ?catalogItemSyncTypes,
    };
  }

  factory ProjectCatalogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ProjectCatalogSettingsResponse(
      catalogItemSyncTypes: map['catalogItemSyncTypes'] == null ? null : (map['catalogItemSyncTypes'] as List).cast<String>(),
    );
  }
}

