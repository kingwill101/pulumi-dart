// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../snapshot_settings_storage_location/snapshot_settings_storage_location.dart';

/// The set of arguments for SnapshotSettings.
class SnapshotSettingsArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Policy of which storage location is going to be resolved, and additional data
  /// that particularizes how the policy is going to be carried out
  /// Structure is documented below.
  final Input<SnapshotSettingsStorageLocation> storageLocation;

  SnapshotSettingsArgs({
    this.project,
    required this.storageLocation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['storageLocation'] = Input.mapInputValue<
        SnapshotSettingsStorageLocation,
        Map<String, dynamic>>(storageLocation, (value) => value.toMap());
    return map;
  }

  factory SnapshotSettingsArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotSettingsArgs(
      project: Input.asOptionalInput<String>(map['project']),
      storageLocation: Input.asInput<SnapshotSettingsStorageLocation>(
          map['storageLocation']),
    );
  }
}
