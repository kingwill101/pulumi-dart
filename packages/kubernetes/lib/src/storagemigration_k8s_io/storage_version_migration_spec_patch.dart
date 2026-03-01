// ignore_for_file: unused_element, unnecessary_cast

import 'group_version_resource_patch.dart';

/// Spec of the storage version migration.
class StorageVersionMigrationSpecPatch {
  /// The token used in the list options to get the next chunk of objects to migrate. When the .status.conditions indicates the migration is "Running", users can use this token to check the progress of the migration.
  final String? continueToken;
  /// The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  final GroupVersionResourcePatch? resource;

  /// Creates a new [StorageVersionMigrationSpecPatch].
  /// [continueToken] The token used in the list options to get the next chunk of objects to migrate. When the .status.conditions indicates the migration is "Running", users can use this token to check the progress of the migration.
  /// [resource] The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  StorageVersionMigrationSpecPatch({
    this.continueToken,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continueToken': ?continueToken,
      'resource': ?resource == null ? null : resource!.toMap(),
    };
  }

  factory StorageVersionMigrationSpecPatch.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationSpecPatch(
      continueToken: map['continueToken'] == null ? null : map['continueToken'] as String,
      resource: map['resource'] == null ? null : GroupVersionResourcePatch.fromMap((map['resource'] as Map).cast<String, dynamic>()),
    );
  }
}

