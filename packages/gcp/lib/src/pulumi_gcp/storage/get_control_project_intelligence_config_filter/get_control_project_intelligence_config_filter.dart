// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_control_project_intelligence_config_filter_excluded_cloud_storage_bucket/get_control_project_intelligence_config_filter_excluded_cloud_storage_bucket.dart';
import '../get_control_project_intelligence_config_filter_excluded_cloud_storage_location/get_control_project_intelligence_config_filter_excluded_cloud_storage_location.dart';
import '../get_control_project_intelligence_config_filter_included_cloud_storage_bucket/get_control_project_intelligence_config_filter_included_cloud_storage_bucket.dart';
import '../get_control_project_intelligence_config_filter_included_cloud_storage_location/get_control_project_intelligence_config_filter_included_cloud_storage_location.dart';

class GetControlProjectIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  final List<
          GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket>
      excludedCloudStorageBuckets;

  /// Locations to exclude from the Storage Intelligence plan.
  final List<
          GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation>
      excludedCloudStorageLocations;

  /// Buckets to include in the Storage Intelligence plan.
  final List<
          GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket>
      includedCloudStorageBuckets;

  /// Locations to include in the Storage Intelligence plan.
  final List<
          GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation>
      includedCloudStorageLocations;

  GetControlProjectIntelligenceConfigFilter({
    required this.excludedCloudStorageBuckets,
    required this.excludedCloudStorageLocations,
    required this.includedCloudStorageBuckets,
    required this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['excludedCloudStorageBuckets'] = Input.encodeList<
            GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket,
            Map<String, dynamic>>(
        excludedCloudStorageBuckets, (value) => value.toMap());
    map['excludedCloudStorageLocations'] = Input.encodeList<
        GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation,
        Map<String,
            dynamic>>(excludedCloudStorageLocations, (value) => value.toMap());
    map['includedCloudStorageBuckets'] = Input.encodeList<
            GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket,
            Map<String, dynamic>>(
        includedCloudStorageBuckets, (value) => value.toMap());
    map['includedCloudStorageLocations'] = Input.encodeList<
        GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation,
        Map<String,
            dynamic>>(includedCloudStorageLocations, (value) => value.toMap());
    return map;
  }

  factory GetControlProjectIntelligenceConfigFilter.fromMap(
      Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilter(
      excludedCloudStorageBuckets: Input.decodeList<
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket>(
          map['excludedCloudStorageBuckets'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      excludedCloudStorageLocations: Input.decodeList<
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation>(
          map['excludedCloudStorageLocations'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageBuckets: Input.decodeList<
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket>(
          map['includedCloudStorageBuckets'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageLocations: Input.decodeList<
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation>(
          map['includedCloudStorageLocations'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
