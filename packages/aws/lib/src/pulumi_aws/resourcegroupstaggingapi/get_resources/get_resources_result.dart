// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resources_resource_tag_mapping_list/get_resources_resource_tag_mapping_list.dart';
import '../get_resources_tag_filter/get_resources_tag_filter.dart';

/// Result data returned by getResources.
class GetResourcesResult {
  final bool? excludeCompliantResources;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? includeComplianceDetails;
  final String region;
  final List<String>? resourceArnLists;

  /// List of objects matching the search criteria.
  final List<GetResourcesResourceTagMappingList> resourceTagMappingLists;
  final List<String>? resourceTypeFilters;
  final List<GetResourcesTagFilter>? tagFilters;

  GetResourcesResult({
    this.excludeCompliantResources,
    required this.id,
    this.includeComplianceDetails,
    required this.region,
    this.resourceArnLists,
    required this.resourceTagMappingLists,
    this.resourceTypeFilters,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeCompliantResourcesValue = excludeCompliantResources;
    if (excludeCompliantResourcesValue != null) {
      map['excludeCompliantResources'] = excludeCompliantResourcesValue;
    }
    map['id'] = id;
    final includeComplianceDetailsValue = includeComplianceDetails;
    if (includeComplianceDetailsValue != null) {
      map['includeComplianceDetails'] = includeComplianceDetailsValue;
    }
    map['region'] = region;
    final resourceArnListsValue = resourceArnLists;
    if (resourceArnListsValue != null) {
      map['resourceArnLists'] = resourceArnListsValue;
    }
    map['resourceTagMappingLists'] = Input.encodeList<
            GetResourcesResourceTagMappingList, Map<String, dynamic>>(
        resourceTagMappingLists, (value) => value.toMap());
    final resourceTypeFiltersValue = resourceTypeFilters;
    if (resourceTypeFiltersValue != null) {
      map['resourceTypeFilters'] = resourceTypeFiltersValue;
    }
    final tagFiltersValue = tagFilters;
    if (tagFiltersValue != null) {
      map['tagFilters'] =
          Input.encodeList<GetResourcesTagFilter, Map<String, dynamic>>(
              tagFiltersValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesResult(
      excludeCompliantResources: map['excludeCompliantResources'] == null
          ? null
          : map['excludeCompliantResources'] as bool,
      id: map['id'] as String,
      includeComplianceDetails: map['includeComplianceDetails'] == null
          ? null
          : map['includeComplianceDetails'] as bool,
      region: map['region'] as String,
      resourceArnLists: map['resourceArnLists'] == null
          ? null
          : (map['resourceArnLists'] as List).cast<String>(),
      resourceTagMappingLists:
          Input.decodeList<GetResourcesResourceTagMappingList>(
              map['resourceTagMappingLists'],
              (value) => GetResourcesResourceTagMappingList.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resourceTypeFilters: map['resourceTypeFilters'] == null
          ? null
          : (map['resourceTypeFilters'] as List).cast<String>(),
      tagFilters: map['tagFilters'] == null
          ? null
          : Input.decodeList<GetResourcesTagFilter>(
              map['tagFilters'],
              (value) => GetResourcesTagFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
