// ignore_for_file: unused_element, unnecessary_cast

import 'control_project_intelligence_config_filter_excluded_cloud_storage_buckets.dart';
import 'control_project_intelligence_config_filter_excluded_cloud_storage_locations.dart';
import 'control_project_intelligence_config_filter_included_cloud_storage_buckets.dart';
import 'control_project_intelligence_config_filter_included_cloud_storage_locations.dart';

class ControlProjectIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets?
  excludedCloudStorageBuckets;

  /// Locations to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations?
  excludedCloudStorageLocations;

  /// Buckets to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets?
  includedCloudStorageBuckets;

  /// Locations to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations?
  includedCloudStorageLocations;

  /// Creates a new [ControlProjectIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  ControlProjectIntelligenceConfigFilter({
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

  factory ControlProjectIntelligenceConfigFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlProjectIntelligenceConfigFilter(
      excludedCloudStorageBuckets: map['excludedCloudStorageBuckets'] == null
          ? null
          : ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap(
              (map['excludedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>(),
            ),
      excludedCloudStorageLocations:
          map['excludedCloudStorageLocations'] == null
          ? null
          : ControlProjectIntelligenceConfigFilterExcludedCloudStorageLocations.fromMap(
              (map['excludedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>(),
            ),
      includedCloudStorageBuckets: map['includedCloudStorageBuckets'] == null
          ? null
          : ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap(
              (map['includedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>(),
            ),
      includedCloudStorageLocations:
          map['includedCloudStorageLocations'] == null
          ? null
          : ControlProjectIntelligenceConfigFilterIncludedCloudStorageLocations.fromMap(
              (map['includedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
