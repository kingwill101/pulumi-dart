// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_cloud_storage_target_filter_cloud_storage_resource_reference/prevention_discovery_config_target_cloud_storage_target_filter_cloud_storage_resource_reference.dart';
import '../prevention_discovery_config_target_cloud_storage_target_filter_collection/prevention_discovery_config_target_cloud_storage_target_filter_collection.dart';

class PreventionDiscoveryConfigTargetCloudStorageTargetFilter {
  /// The bucket to scan. Targets including this can only include one target (the target with this bucket). This enables profiling the contents of a single bucket, while the other options allow for easy profiling of many buckets within a project or an organization.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference?
      cloudStorageResourceReference;

  /// A collection of resources for this filter to apply to.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection?
      collection;

  /// Match discovery resources not covered by any other filter.
  final Map<String, dynamic>? others;

  PreventionDiscoveryConfigTargetCloudStorageTargetFilter({
    this.cloudStorageResourceReference,
    this.collection,
    this.others,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudStorageResourceReferenceValue = cloudStorageResourceReference;
    if (cloudStorageResourceReferenceValue != null) {
      map['cloudStorageResourceReference'] =
          cloudStorageResourceReferenceValue.toMap();
    }
    final collectionValue = collection;
    if (collectionValue != null) {
      map['collection'] = collectionValue.toMap();
    }
    final othersValue = others;
    if (othersValue != null) {
      map['others'] = othersValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilter.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilter(
      cloudStorageResourceReference: map['cloudStorageResourceReference'] ==
              null
          ? null
          : PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference
              .fromMap((map['cloudStorageResourceReference'] as Map)
                  .cast<String, dynamic>()),
      collection: map['collection'] == null
          ? null
          : PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollection
              .fromMap((map['collection'] as Map).cast<String, dynamic>()),
      others: map['others'] == null
          ? null
          : (map['others'] as Map).cast<String, dynamic>(),
    );
  }
}
