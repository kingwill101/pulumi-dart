// ignore_for_file: unused_element, unnecessary_cast

import 'control_organization_intelligence_config_filter_excluded_cloud_storage_buckets.dart';
import 'control_organization_intelligence_config_filter_excluded_cloud_storage_locations.dart';
import 'control_organization_intelligence_config_filter_included_cloud_storage_buckets.dart';
import 'control_organization_intelligence_config_filter_included_cloud_storage_locations.dart';

class ControlOrganizationIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets?
      excludedCloudStorageBuckets;

  /// Locations to exclude from the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations?
      excludedCloudStorageLocations;

  /// Buckets to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets?
      includedCloudStorageBuckets;

  /// Locations to include in the Storage Intelligence plan.
  /// Structure is documented below.
  final ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations?
      includedCloudStorageLocations;

  /// Creates a new [ControlOrganizationIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  ControlOrganizationIntelligenceConfigFilter({
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

  factory ControlOrganizationIntelligenceConfigFilter.fromMap(
      Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigFilter(
      excludedCloudStorageBuckets: map['excludedCloudStorageBuckets'] == null
          ? null
          : ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets
              .fromMap((map['excludedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>()),
      excludedCloudStorageLocations: map['excludedCloudStorageLocations'] ==
              null
          ? null
          : ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocations
              .fromMap((map['excludedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>()),
      includedCloudStorageBuckets: map['includedCloudStorageBuckets'] == null
          ? null
          : ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBuckets
              .fromMap((map['includedCloudStorageBuckets'] as Map)
                  .cast<String, dynamic>()),
      includedCloudStorageLocations: map['includedCloudStorageLocations'] ==
              null
          ? null
          : ControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocations
              .fromMap((map['includedCloudStorageLocations'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
