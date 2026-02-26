// ignore_for_file: unused_element, unnecessary_cast

import '../control_folder_intelligence_config_filter_excluded_cloud_storage_buckets/control_folder_intelligence_config_filter_excluded_cloud_storage_buckets.dart';
import '../control_folder_intelligence_config_filter_excluded_cloud_storage_locations/control_folder_intelligence_config_filter_excluded_cloud_storage_locations.dart';
import '../control_folder_intelligence_config_filter_included_cloud_storage_buckets/control_folder_intelligence_config_filter_included_cloud_storage_buckets.dart';
import '../control_folder_intelligence_config_filter_included_cloud_storage_locations/control_folder_intelligence_config_filter_included_cloud_storage_locations.dart';

class ControlFolderIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets?
      excludedCloudStorageBuckets;

  /// Locations to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations?
      excludedCloudStorageLocations;

  /// Buckets to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets?
      includedCloudStorageBuckets;

  /// Locations to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations?
      includedCloudStorageLocations;

  ControlFolderIntelligenceConfigFilter({
    this.excludedCloudStorageBuckets,
    this.excludedCloudStorageLocations,
    this.includedCloudStorageBuckets,
    this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludedCloudStorageBucketsValue = excludedCloudStorageBuckets;
    if (excludedCloudStorageBucketsValue != null) {
      map['excludedCloudStorageBuckets'] =
          excludedCloudStorageBucketsValue.toMap();
    }
    final excludedCloudStorageLocationsValue = excludedCloudStorageLocations;
    if (excludedCloudStorageLocationsValue != null) {
      map['excludedCloudStorageLocations'] =
          excludedCloudStorageLocationsValue.toMap();
    }
    final includedCloudStorageBucketsValue = includedCloudStorageBuckets;
    if (includedCloudStorageBucketsValue != null) {
      map['includedCloudStorageBuckets'] =
          includedCloudStorageBucketsValue.toMap();
    }
    final includedCloudStorageLocationsValue = includedCloudStorageLocations;
    if (includedCloudStorageLocationsValue != null) {
      map['includedCloudStorageLocations'] =
          includedCloudStorageLocationsValue.toMap();
    }
    return map;
  }

  factory ControlFolderIntelligenceConfigFilter.fromMap(
      Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigFilter(
      excludedCloudStorageBuckets: map['excludedCloudStorageBuckets'] == null
          ? null
          : ControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets
              .fromMap((map['excludedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>()),
      excludedCloudStorageLocations: map['excludedCloudStorageLocations'] ==
              null
          ? null
          : ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations
              .fromMap((map['excludedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>()),
      includedCloudStorageBuckets: map['includedCloudStorageBuckets'] == null
          ? null
          : ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets
              .fromMap((map['includedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>()),
      includedCloudStorageLocations: map['includedCloudStorageLocations'] ==
              null
          ? null
          : ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations
              .fromMap((map['includedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
