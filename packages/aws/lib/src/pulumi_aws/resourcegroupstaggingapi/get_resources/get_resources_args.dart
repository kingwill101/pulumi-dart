// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resources_tag_filter/get_resources_tag_filter.dart';

/// Arguments for getResources.
class GetResourcesArgs {
  /// Specifies whether to exclude resources that are compliant with the tag policy. You can use this parameter only if the `include_compliance_details` argument is also set to `true`.
  final Input<bool>? excludeCompliantResources;

  /// Specifies whether to include details regarding the compliance with the effective tag policy.
  final Input<bool>? includeComplianceDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies a list of ARNs of resources for which you want to retrieve tag data. Conflicts with `filter`.
  final Input<List<String>>? resourceArnLists;

  /// Constraints on the resources that you want returned. The format of each resource type is `service:resourceType`. For example, specifying a resource type of `ec2` returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of `ec2:instance` returns only EC2 instances.
  final Input<List<String>>? resourceTypeFilters;

  /// Specifies a list of Tag Filters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. See Tag Filter below. Conflicts with `resource_arn_list`.
  final Input<List<GetResourcesTagFilter>>? tagFilters;

  GetResourcesArgs({
    this.excludeCompliantResources,
    this.includeComplianceDetails,
    this.region,
    this.resourceArnLists,
    this.resourceTypeFilters,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeCompliantResourcesValue = excludeCompliantResources;
    if (excludeCompliantResourcesValue != null) {
      map['excludeCompliantResources'] = excludeCompliantResourcesValue;
    }
    final includeComplianceDetailsValue = includeComplianceDetails;
    if (includeComplianceDetailsValue != null) {
      map['includeComplianceDetails'] = includeComplianceDetailsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceArnListsValue = resourceArnLists;
    if (resourceArnListsValue != null) {
      map['resourceArnLists'] = resourceArnListsValue;
    }
    final resourceTypeFiltersValue = resourceTypeFilters;
    if (resourceTypeFiltersValue != null) {
      map['resourceTypeFilters'] = resourceTypeFiltersValue;
    }
    final tagFiltersValue = tagFilters;
    if (tagFiltersValue != null) {
      map['tagFilters'] = Input.mapOptionalInputValue<
              List<GetResourcesTagFilter>, List<Map<String, dynamic>>>(
          tagFiltersValue,
          (value) =>
              Input.encodeList<GetResourcesTagFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcesArgs(
      excludeCompliantResources:
          Input.asOptionalInput<bool>(map['excludeCompliantResources']),
      includeComplianceDetails:
          Input.asOptionalInput<bool>(map['includeComplianceDetails']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceArnLists:
          Input.asOptionalInput<List<String>>(map['resourceArnLists']),
      resourceTypeFilters:
          Input.asOptionalInput<List<String>>(map['resourceTypeFilters']),
      tagFilters:
          Input.asOptionalInput<List<GetResourcesTagFilter>>(map['tagFilters']),
    );
  }
}
