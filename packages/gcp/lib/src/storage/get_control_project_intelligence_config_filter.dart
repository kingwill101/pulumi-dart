// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_intelligence_config_filter_excluded_cloud_storage_bucket.dart';
import 'get_control_project_intelligence_config_filter_excluded_cloud_storage_location.dart';
import 'get_control_project_intelligence_config_filter_included_cloud_storage_bucket.dart';
import 'get_control_project_intelligence_config_filter_included_cloud_storage_location.dart';

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

  /// Creates a new [GetControlProjectIntelligenceConfigFilter].
  /// [excludedCloudStorageBuckets] Buckets to exclude from the Storage Intelligence plan.
  /// [excludedCloudStorageLocations] Locations to exclude from the Storage Intelligence plan.
  /// [includedCloudStorageBuckets] Buckets to include in the Storage Intelligence plan.
  /// [includedCloudStorageLocations] Locations to include in the Storage Intelligence plan.
  GetControlProjectIntelligenceConfigFilter({
    required this.excludedCloudStorageBuckets,
    required this.excludedCloudStorageLocations,
    required this.includedCloudStorageBuckets,
    required this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['excludedCloudStorageBuckets'] = pulumi.Input.encodeList<
            GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket,
            Map<String, dynamic>>(
        excludedCloudStorageBuckets, (value) => value.toMap());
    map['excludedCloudStorageLocations'] = pulumi.Input.encodeList<
        GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation,
        Map<String,
            dynamic>>(excludedCloudStorageLocations, (value) => value.toMap());
    map['includedCloudStorageBuckets'] = pulumi.Input.encodeList<
            GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket,
            Map<String, dynamic>>(
        includedCloudStorageBuckets, (value) => value.toMap());
    map['includedCloudStorageLocations'] = pulumi.Input.encodeList<
        GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation,
        Map<String,
            dynamic>>(includedCloudStorageLocations, (value) => value.toMap());
    return map;
  }

  factory GetControlProjectIntelligenceConfigFilter.fromMap(
      Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilter(
      excludedCloudStorageBuckets: pulumi.Input.decodeList<
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket>(
          map['excludedCloudStorageBuckets'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      excludedCloudStorageLocations: pulumi.Input.decodeList<
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation>(
          map['excludedCloudStorageLocations'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterExcludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageBuckets: pulumi.Input.decodeList<
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket>(
          map['includedCloudStorageBuckets'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageLocations: pulumi.Input.decodeList<
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation>(
          map['includedCloudStorageLocations'],
          (value) =>
              GetControlProjectIntelligenceConfigFilterIncludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
