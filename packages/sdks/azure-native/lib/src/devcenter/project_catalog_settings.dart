// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings to be used when associating a project with a catalog.
class ProjectCatalogSettings {
  /// Indicates catalog item types that can be synced.
  final pulumi.Input<List<String>>? catalogItemSyncTypes;

  /// Creates a new [ProjectCatalogSettings].
  /// [catalogItemSyncTypes] Indicates catalog item types that can be synced.
  const ProjectCatalogSettings({
    this.catalogItemSyncTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogItemSyncTypes': ?catalogItemSyncTypes,
    };
  }

  factory ProjectCatalogSettings.fromMap(Map<String, dynamic> map) {
    return ProjectCatalogSettings(
      catalogItemSyncTypes: (() { final guardedValue = map['catalogItemSyncTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
