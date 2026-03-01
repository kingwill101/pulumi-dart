// ignore_for_file: unused_element, unnecessary_cast

import '../meta/group_resource_patch.dart';

/// Spec of the storage version migration.
class StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1 {
  /// The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  final GroupResourcePatch? resource;

  /// Creates a new [StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1].
  /// [resource] The resource that is being migrated. The migrator sends requests to the endpoint serving the resource. Immutable.
  StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1({
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource == null ? null : resource!.toMap(),
    };
  }

  factory StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return StorageVersionMigrationSpecPatchStoragemigrationK8sIoV1beta1(
      resource: map['resource'] == null ? null : GroupResourcePatch.fromMap((map['resource'] as Map).cast<String, dynamic>()),
    );
  }
}

