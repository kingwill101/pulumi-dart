// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_control_organization_intelligence_config_filter_excluded_cloud_storage_bucket/get_control_organization_intelligence_config_filter_excluded_cloud_storage_bucket.dart';
import '../get_control_organization_intelligence_config_filter_excluded_cloud_storage_location/get_control_organization_intelligence_config_filter_excluded_cloud_storage_location.dart';
import '../get_control_organization_intelligence_config_filter_included_cloud_storage_bucket/get_control_organization_intelligence_config_filter_included_cloud_storage_bucket.dart';
import '../get_control_organization_intelligence_config_filter_included_cloud_storage_location/get_control_organization_intelligence_config_filter_included_cloud_storage_location.dart';

class GetControlOrganizationIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  final List<
          GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket>
      excludedCloudStorageBuckets;

  /// Locations to exclude from the Storage Intelligence plan.
  final List<
          GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation>
      excludedCloudStorageLocations;

  /// Buckets to include in the Storage Intelligence plan.
  final List<
          GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket>
      includedCloudStorageBuckets;

  /// Locations to include in the Storage Intelligence plan.
  final List<
          GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation>
      includedCloudStorageLocations;

  GetControlOrganizationIntelligenceConfigFilter({
    required this.excludedCloudStorageBuckets,
    required this.excludedCloudStorageLocations,
    required this.includedCloudStorageBuckets,
    required this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['excludedCloudStorageBuckets'] = Input.encodeList<
        GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket,
        Map<String,
            dynamic>>(excludedCloudStorageBuckets, (value) => value.toMap());
    map['excludedCloudStorageLocations'] = Input.encodeList<
        GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation,
        Map<String,
            dynamic>>(excludedCloudStorageLocations, (value) => value.toMap());
    map['includedCloudStorageBuckets'] = Input.encodeList<
        GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket,
        Map<String,
            dynamic>>(includedCloudStorageBuckets, (value) => value.toMap());
    map['includedCloudStorageLocations'] = Input.encodeList<
        GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation,
        Map<String,
            dynamic>>(includedCloudStorageLocations, (value) => value.toMap());
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigFilter.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilter(
      excludedCloudStorageBuckets: Input.decodeList<
              GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket>(
          map['excludedCloudStorageBuckets'],
          (value) =>
              GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      excludedCloudStorageLocations: Input.decodeList<
              GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation>(
          map['excludedCloudStorageLocations'],
          (value) =>
              GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageBuckets: Input.decodeList<
              GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket>(
          map['includedCloudStorageBuckets'],
          (value) =>
              GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageLocations: Input.decodeList<
              GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation>(
          map['includedCloudStorageLocations'],
          (value) =>
              GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
