// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_resource_tag_mapping_list.dart';
import 'get_resources_tag_filter.dart';

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

  /// Creates a new [GetResourcesResult].
  /// [excludeCompliantResources] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeComplianceDetails] Optional.
  /// [region] Required.
  /// [resourceArnLists] Optional.
  /// [resourceTagMappingLists] List of objects matching the search criteria.
  /// [resourceTypeFilters] Optional.
  /// [tagFilters] Optional.
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
    return <String, dynamic>{
      'excludeCompliantResources': ?excludeCompliantResources,
      'id': id,
      'includeComplianceDetails': ?includeComplianceDetails,
      'region': region,
      'resourceArnLists': ?resourceArnLists,
      'resourceTagMappingLists':
          pulumi.Input.encodeList<
            GetResourcesResourceTagMappingList,
            Map<String, dynamic>
          >(resourceTagMappingLists, (value) => value.toMap()),
      'resourceTypeFilters': ?resourceTypeFilters,
      'tagFilters': ?tagFilters == null
          ? null
          : pulumi.Input.encodeList<
              GetResourcesTagFilter,
              Map<String, dynamic>
            >(tagFilters!, (value) => value.toMap()),
    };
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
          pulumi.Input.decodeList<GetResourcesResourceTagMappingList>(
            map['resourceTagMappingLists'],
            (value) => GetResourcesResourceTagMappingList.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      resourceTypeFilters: map['resourceTypeFilters'] == null
          ? null
          : (map['resourceTypeFilters'] as List).cast<String>(),
      tagFilters: map['tagFilters'] == null
          ? null
          : pulumi.Input.decodeList<GetResourcesTagFilter>(
              map['tagFilters'],
              (value) => GetResourcesTagFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
