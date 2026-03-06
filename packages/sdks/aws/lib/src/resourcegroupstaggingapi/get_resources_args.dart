// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resources_tag_filter.dart';

/// {@template pulumi_resourcegroupstaggingapi_get_resources_get_resources_args_doc}
/// Arguments for getResources.
/// {@endtemplate}
/// {@macro pulumi_resourcegroupstaggingapi_get_resources_get_resources_args_doc}
class GetResourcesArgs {
  /// Specifies whether to exclude resources that are compliant with the tag policy. You can use this parameter only if the `include_compliance_details` argument is also set to `true`.
  final pulumi.Input<bool>? excludeCompliantResources;
  /// Specifies whether to include details regarding the compliance with the effective tag policy.
  final pulumi.Input<bool>? includeComplianceDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies a list of ARNs of resources for which you want to retrieve tag data. Conflicts with `filter`.
  final pulumi.Input<List<String>>? resourceArnLists;
  /// Constraints on the resources that you want returned. The format of each resource type is `service:resourceType`. For example, specifying a resource type of `ec2` returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of `ec2:instance` returns only EC2 instances.
  final pulumi.Input<List<String>>? resourceTypeFilters;
  /// Specifies a list of Tag Filters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. See Tag Filter below. Conflicts with `resource_arn_list`.
  final pulumi.Input<List<GetResourcesTagFilter>>? tagFilters;

  /// Creates a new [GetResourcesArgs].
  /// [excludeCompliantResources] Specifies whether to exclude resources that are compliant with the tag policy. You can use this parameter only if the `include_compliance_details` argument is also set to `true`.
  /// [includeComplianceDetails] Specifies whether to include details regarding the compliance with the effective tag policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArnLists] Specifies a list of ARNs of resources for which you want to retrieve tag data. Conflicts with `filter`.
  /// [resourceTypeFilters] Constraints on the resources that you want returned. The format of each resource type is `service:resourceType`. For example, specifying a resource type of `ec2` returns all Amazon EC2 resources (which includes EC2 instances). Specifying a resource type of `ec2:instance` returns only EC2 instances.
  /// [tagFilters] Specifies a list of Tag Filters (keys and values) to restrict the output to only those resources that have the specified tag and, if included, the specified value. See Tag Filter below. Conflicts with `resource_arn_list`.
  const GetResourcesArgs({
    this.excludeCompliantResources,
    this.includeComplianceDetails,
    this.region,
    this.resourceArnLists,
    this.resourceTypeFilters,
    this.tagFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeCompliantResources': ?excludeCompliantResources,
      'includeComplianceDetails': ?includeComplianceDetails,
      'region': ?region,
      'resourceArnLists': ?resourceArnLists,
      'resourceTypeFilters': ?resourceTypeFilters,
      'tagFilters': ?pulumi.Input.mapOptionalInputValue<List<GetResourcesTagFilter>, List<Map<String, dynamic>>>(tagFilters, (value) => pulumi.Input.encodeList<GetResourcesTagFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResourcesArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcesArgs(
      excludeCompliantResources: (() { final guardedValue = map['excludeCompliantResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeComplianceDetails: (() { final guardedValue = map['includeComplianceDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArnLists: (() { final guardedValue = map['resourceArnLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceTypeFilters: (() { final guardedValue = map['resourceTypeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagFilters: (() { final guardedValue = map['tagFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetResourcesTagFilter>(guardedValue, (value) => GetResourcesTagFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

