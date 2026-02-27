// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_control_folder_intelligence_config_filter_excluded_cloud_storage_bucket/get_control_folder_intelligence_config_filter_excluded_cloud_storage_bucket.dart';
import '../get_control_folder_intelligence_config_filter_excluded_cloud_storage_location/get_control_folder_intelligence_config_filter_excluded_cloud_storage_location.dart';
import '../get_control_folder_intelligence_config_filter_included_cloud_storage_bucket/get_control_folder_intelligence_config_filter_included_cloud_storage_bucket.dart';
import '../get_control_folder_intelligence_config_filter_included_cloud_storage_location/get_control_folder_intelligence_config_filter_included_cloud_storage_location.dart';

class GetControlFolderIntelligenceConfigFilter {
  /// Buckets to exclude from the Storage Intelligence plan.
  final List<GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket>
      excludedCloudStorageBuckets;

  /// Locations to exclude from the Storage Intelligence plan.
  final List<
          GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation>
      excludedCloudStorageLocations;

  /// Buckets to include in the Storage Intelligence plan.
  final List<GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket>
      includedCloudStorageBuckets;

  /// Locations to include in the Storage Intelligence plan.
  final List<
          GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation>
      includedCloudStorageLocations;

  GetControlFolderIntelligenceConfigFilter({
    required this.excludedCloudStorageBuckets,
    required this.excludedCloudStorageLocations,
    required this.includedCloudStorageBuckets,
    required this.includedCloudStorageLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['excludedCloudStorageBuckets'] = pulumi.Input.encodeList<
            GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket,
            Map<String, dynamic>>(
        excludedCloudStorageBuckets, (value) => value.toMap());
    map['excludedCloudStorageLocations'] = pulumi.Input.encodeList<
        GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation,
        Map<String,
            dynamic>>(excludedCloudStorageLocations, (value) => value.toMap());
    map['includedCloudStorageBuckets'] = pulumi.Input.encodeList<
            GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket,
            Map<String, dynamic>>(
        includedCloudStorageBuckets, (value) => value.toMap());
    map['includedCloudStorageLocations'] = pulumi.Input.encodeList<
        GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation,
        Map<String,
            dynamic>>(includedCloudStorageLocations, (value) => value.toMap());
    return map;
  }

  factory GetControlFolderIntelligenceConfigFilter.fromMap(
      Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilter(
      excludedCloudStorageBuckets: pulumi.Input.decodeList<
              GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket>(
          map['excludedCloudStorageBuckets'],
          (value) =>
              GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      excludedCloudStorageLocations: pulumi.Input.decodeList<
              GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation>(
          map['excludedCloudStorageLocations'],
          (value) =>
              GetControlFolderIntelligenceConfigFilterExcludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageBuckets: pulumi.Input.decodeList<
              GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket>(
          map['includedCloudStorageBuckets'],
          (value) =>
              GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket
                  .fromMap((value as Map).cast<String, dynamic>())),
      includedCloudStorageLocations: pulumi.Input.decodeList<
              GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation>(
          map['includedCloudStorageLocations'],
          (value) =>
              GetControlFolderIntelligenceConfigFilterIncludedCloudStorageLocation
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
