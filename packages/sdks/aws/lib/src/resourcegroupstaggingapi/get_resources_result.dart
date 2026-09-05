// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_resource_tag_mapping_list.dart';
import 'get_resources_tag_filter.dart';

/// Result data returned by getResources.
class GetResourcesResult {
  final bool? excludeCompliantResources;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? includeComplianceDetails;
  final String? region;
  final List<String>? resourceArnLists;
  /// List of objects matching the search criteria.
  final List<GetResourcesResourceTagMappingList>? resourceTagMappingLists;
  final List<String>? resourceTypeFilters;
  final List<GetResourcesTagFilter>? tagFilters;

  /// Creates a new [GetResourcesResult].
  /// [excludeCompliantResources] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [includeComplianceDetails] Optional.
  /// [region] Optional.
  /// [resourceArnLists] Optional.
  /// [resourceTagMappingLists] List of objects matching the search criteria.
  /// [resourceTypeFilters] Optional.
  /// [tagFilters] Optional.
  const GetResourcesResult({
    this.excludeCompliantResources,
    this.id,
    this.includeComplianceDetails,
    this.region,
    this.resourceArnLists,
    this.resourceTagMappingLists,
    this.resourceTypeFilters,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeCompliantResources': ?excludeCompliantResources,
      'id': ?id,
      'includeComplianceDetails': ?includeComplianceDetails,
      'region': ?region,
      'resourceArnLists': ?resourceArnLists,
      'resourceTagMappingLists': ?(() { final guardedValue = resourceTagMappingLists; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcesResourceTagMappingList, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceTypeFilters': ?resourceTypeFilters,
      'tagFilters': ?(() { final guardedValue = tagFilters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourcesTagFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetResourcesResult(
      excludeCompliantResources: (() { final guardedValue = map['excludeCompliantResources']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeComplianceDetails: (() { final guardedValue = map['includeComplianceDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceArnLists: (() { final guardedValue = map['resourceArnLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceTagMappingLists: (() { final guardedValue = map['resourceTagMappingLists']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcesResourceTagMappingList>(guardedValue, (value) => GetResourcesResourceTagMappingList.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceTypeFilters: (() { final guardedValue = map['resourceTypeFilters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourcesTagFilter>(guardedValue, (value) => GetResourcesTagFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
