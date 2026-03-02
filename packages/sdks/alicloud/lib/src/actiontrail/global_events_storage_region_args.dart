// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_actiontrail_global_events_storage_region_global_events_storage_region_args_doc}
/// The set of arguments for GlobalEventsStorageRegion.
/// {@endtemplate}
/// {@macro pulumi_actiontrail_global_events_storage_region_global_events_storage_region_args_doc}
class GlobalEventsStorageRegionArgs {
  /// Global Events Storage Region.
  final pulumi.Input<String>? storageRegion;

  /// Creates a new [GlobalEventsStorageRegionArgs].
  /// [storageRegion] Global Events Storage Region.
  GlobalEventsStorageRegionArgs({
    this.storageRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageRegion': ?storageRegion,
    };
  }

  factory GlobalEventsStorageRegionArgs.fromMap(Map<String, dynamic> map) {
    return GlobalEventsStorageRegionArgs(
      storageRegion: map['storageRegion'] == null ? null : (map['storageRegion']! as String).input(),
    );
  }
}

