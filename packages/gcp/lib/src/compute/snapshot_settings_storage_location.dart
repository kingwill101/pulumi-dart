// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_settings_storage_location_location.dart';

class SnapshotSettingsStorageLocation {
  /// When the policy is SPECIFIC_LOCATIONS, snapshots will be stored in the
  /// locations listed in this field. Keys are Cloud Storage bucket locations.
  /// Only one location can be specified.
  /// Structure is documented below.
  final List<SnapshotSettingsStorageLocationLocation>? locations;

  /// The chosen location policy
  /// Possible values are: `NEAREST_MULTI_REGION`, `LOCAL_REGION`, `SPECIFIC_LOCATIONS`.
  final String policy;

  /// Creates a new [SnapshotSettingsStorageLocation].
  /// [locations] When the policy is SPECIFIC_LOCATIONS, snapshots will be stored in the
  /// [policy] The chosen location policy
  SnapshotSettingsStorageLocation({
    this.locations,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationsValue = locations;
    if (locationsValue != null) {
      map['locations'] = pulumi.Input.encodeList<
          SnapshotSettingsStorageLocationLocation,
          Map<String, dynamic>>(locationsValue, (value) => value.toMap());
    }
    map['policy'] = policy;
    return map;
  }

  factory SnapshotSettingsStorageLocation.fromMap(Map<String, dynamic> map) {
    return SnapshotSettingsStorageLocation(
      locations: map['locations'] == null
          ? null
          : pulumi.Input.decodeList<SnapshotSettingsStorageLocationLocation>(
              map['locations'],
              (value) => SnapshotSettingsStorageLocationLocation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      policy: map['policy'] as String,
    );
  }
}
