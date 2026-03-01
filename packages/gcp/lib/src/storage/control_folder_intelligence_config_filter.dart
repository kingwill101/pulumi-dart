// ignore_for_file: unused_element, unnecessary_cast

import 'control_folder_intelligence_config_filter_excluded_cloud_storage_buckets.dart';
import 'control_folder_intelligence_config_filter_excluded_cloud_storage_locations.dart';
import 'control_folder_intelligence_config_filter_included_cloud_storage_buckets.dart';
import 'control_folder_intelligence_config_filter_included_cloud_storage_locations.dart';

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

  /// Creates a new [ControlFolderIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  ControlFolderIntelligenceConfigFilter({
    this.excludedCloudStorageBuckets,
    this.excludedCloudStorageLocations,
    this.includedCloudStorageBuckets,
    this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedCloudStorageBuckets': ?excludedCloudStorageBuckets == null
          ? null
          : excludedCloudStorageBuckets!.toMap(),
      'excludedCloudStorageLocations': ?excludedCloudStorageLocations == null
          ? null
          : excludedCloudStorageLocations!.toMap(),
      'includedCloudStorageBuckets': ?includedCloudStorageBuckets == null
          ? null
          : includedCloudStorageBuckets!.toMap(),
      'includedCloudStorageLocations': ?includedCloudStorageLocations == null
          ? null
          : includedCloudStorageLocations!.toMap(),
    };
  }

  factory ControlFolderIntelligenceConfigFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlFolderIntelligenceConfigFilter(
      excludedCloudStorageBuckets: map['excludedCloudStorageBuckets'] == null
          ? null
          : ControlFolderIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap(
              (map['excludedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>(),
            ),
      excludedCloudStorageLocations:
          map['excludedCloudStorageLocations'] == null
          ? null
          : ControlFolderIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(
              (map['excludedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>(),
            ),
      includedCloudStorageBuckets: map['includedCloudStorageBuckets'] == null
          ? null
          : ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap(
              (map['includedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>(),
            ),
      includedCloudStorageLocations:
          map['includedCloudStorageLocations'] == null
          ? null
          : ControlFolderIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(
              (map['includedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
