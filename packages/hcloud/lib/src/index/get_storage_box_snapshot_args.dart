// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_storage_box_snapshot_get_storage_box_snapshot_args_doc}
/// Arguments for getStorageBoxSnapshot.
/// {@endtemplate}
/// {@macro pulumi_index_get_storage_box_snapshot_get_storage_box_snapshot_args_doc}
class GetStorageBoxSnapshotArgs {
  /// ID of the Storage Box Snapshot.
  final pulumi.Input<int>? id;
  /// Name of the Storage Box Snapshot.
  final pulumi.Input<String>? name;
  /// ID of the Storage Box.
  final pulumi.Input<int> storageBoxId;
  /// Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  final pulumi.Input<String>? withSelector;

  /// Creates a new [GetStorageBoxSnapshotArgs].
  /// [id] ID of the Storage Box Snapshot.
  /// [name] Name of the Storage Box Snapshot.
  /// [storageBoxId] ID of the Storage Box.
  /// [withSelector] Filter results using a [Label Selector](https://docs.hetzner.cloud/reference/hetzner#label-selector).
  GetStorageBoxSnapshotArgs({
    int? id,
    String? name,
    required int storageBoxId,
    String? withSelector,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageBoxId = pulumi.Input.asInput<int>(storageBoxId),
      withSelector = pulumi.Input.asOptionalInput<String>(withSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'storageBoxId': storageBoxId,
      'withSelector': ?withSelector,
    };
  }

  factory GetStorageBoxSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxSnapshotArgs(
      id: map['id'] == null ? null : map['id'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      storageBoxId: map['storageBoxId'] as int,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

