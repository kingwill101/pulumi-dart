// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resources_tag_filter/get_resources_tag_filter.dart';

/// Arguments for getResources.
class GetResourcesArgs {
  /// Specifies whether to exclude resources that are compliant with the tag policy. You can use this parameter only if the <span pulumi-lang-nodejs="`includeComplianceDetails`" pulumi-lang-dotnet="`IncludeComplianceDetails`" pulumi-lang-go="`includeComplianceDetails`" pulumi-lang-python="`include_compliance_details`" pulumi-lang-yaml="`includeComplianceDetails`" pulumi-lang-java="`includeComplianceDetails`">`include_compliance_details`</span> argument is also set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? excludeCompliantResources;

  /// Specifies whether to include details regarding the compliance with the effective tag policy.
  final Input<bool>? includeComplianceDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies a list of ARNs of resources for which you want to retrieve tag data. Conflicts with <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span>.
  final Input<List<String>>? resourceArnLists;

  /// Constraints on the resources that you want returned. The format of each resource type is `service:resourceType`. For example, specifying a resource type of <span pulumi-lang-nodejs="`ec2`" pulumi-lang-dotnet="`Ec2`" pulumi-lang-go="`ec2`" pulumi-lang-python="`ec2`" pulumi-lang-yaml="`ec2`" pulumi-lang-java="`ec2`">`ec2`</span> returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of `ec2:instance` returns only EC2 instances.
  final Input<List<String>>? resourceTypeFilters;

  /// Specifies a list of Tag Filters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. See Tag Filter below. Conflicts with <span pulumi-lang-nodejs="`resourceArnList`" pulumi-lang-dotnet="`ResourceArnList`" pulumi-lang-go="`resourceArnList`" pulumi-lang-python="`resource_arn_list`" pulumi-lang-yaml="`resourceArnList`" pulumi-lang-java="`resourceArnList`">`resource_arn_list`</span>.
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
