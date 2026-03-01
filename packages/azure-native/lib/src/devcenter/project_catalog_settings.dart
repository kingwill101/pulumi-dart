// ignore_for_file: unused_element, unnecessary_cast


/// Settings to be used when associating a project with a catalog.
class ProjectCatalogSettings {
  /// Indicates catalog item types that can be synced.
  final List<String>? catalogItemSyncTypes;

  /// Creates a new [ProjectCatalogSettings].
  /// [catalogItemSyncTypes] Indicates catalog item types that can be synced.
  ProjectCatalogSettings({
    this.catalogItemSyncTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogItemSyncTypes': ?catalogItemSyncTypes,
    };
  }

  factory ProjectCatalogSettings.fromMap(Map<String, dynamic> map) {
    return ProjectCatalogSettings(
      catalogItemSyncTypes: map['catalogItemSyncTypes'] == null ? null : (map['catalogItemSyncTypes'] as List).cast<String>(),
    );
  }
}

