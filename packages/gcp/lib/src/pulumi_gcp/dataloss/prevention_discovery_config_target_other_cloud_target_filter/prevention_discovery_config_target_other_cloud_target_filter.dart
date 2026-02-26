// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_other_cloud_target_filter_collection/prevention_discovery_config_target_other_cloud_target_filter_collection.dart';
import '../prevention_discovery_config_target_other_cloud_target_filter_single_resource/prevention_discovery_config_target_other_cloud_target_filter_single_resource.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilter {
  /// A collection of resources for this filter to apply to.
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection?
      collection;

  /// Match discovery resources not covered by any other filter.
  final Map<String, dynamic>? others;

  /// The resource to scan. Configs using this filter can only have one target (the target with this single resource reference).
  /// Structure is documented below.
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource?
      singleResource;

  PreventionDiscoveryConfigTargetOtherCloudTargetFilter({
    this.collection,
    this.others,
    this.singleResource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final collectionValue = collection;
    if (collectionValue != null) {
      map['collection'] = collectionValue.toMap();
    }
    final othersValue = others;
    if (othersValue != null) {
      map['others'] = othersValue;
    }
    final singleResourceValue = singleResource;
    if (singleResourceValue != null) {
      map['singleResource'] = singleResourceValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilter.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilter(
      collection: map['collection'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollection
              .fromMap((map['collection'] as Map).cast<String, dynamic>()),
      others: map['others'] == null
          ? null
          : (map['others'] as Map).cast<String, dynamic>(),
      singleResource: map['singleResource'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource
              .fromMap((map['singleResource'] as Map).cast<String, dynamic>()),
    );
  }
}
