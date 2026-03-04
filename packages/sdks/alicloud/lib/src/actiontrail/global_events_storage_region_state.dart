// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GlobalEventsStorageRegion resources.
class GlobalEventsStorageRegionState {
  /// Global Events Storage Region.
  final pulumi.Input<String>? storageRegion;

  /// Creates a new [GlobalEventsStorageRegionState].
  /// [storageRegion] Global Events Storage Region.
  GlobalEventsStorageRegionState({this.storageRegion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storageRegion': ?storageRegion};
  }

  factory GlobalEventsStorageRegionState.fromMap(Map<String, dynamic> map) {
    return GlobalEventsStorageRegionState(
      storageRegion: (() {
        final guardedValue = map['storageRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
