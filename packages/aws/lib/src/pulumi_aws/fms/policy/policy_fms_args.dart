// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_exclude_map/policy_exclude_map.dart';
import '../policy_include_map/policy_include_map.dart';
import '../policy_security_service_policy_data/policy_security_service_policy_data.dart';

/// The set of arguments for Policy.
class PolicyFmsArgs {
  /// If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  final pulumi.Input<bool>? deleteAllPolicyResources;

  /// If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  final pulumi.Input<bool>? deleteUnusedFmManagedResources;

  /// The description of the AWS Network Firewall firewall policy.
  final pulumi.Input<String>? description;

  /// A map of lists of accounts and OU's to exclude from the policy. See the `exclude_map` block.
  final pulumi.Input<PolicyExcludeMap>? excludeMap;

  /// A boolean value, if true the tags that are specified in the `resource_tags` are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy.
  final pulumi.Input<bool> excludeResourceTags;

  /// A map of lists of accounts and OU's to include in the policy. See the `include_map` block.
  final pulumi.Input<PolicyIncludeMap>? includeMap;

  /// The friendly name of the AWS Firewall Manager Policy.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A boolean value, indicates if the policy should automatically applied to resources that already exist in the account.
  final pulumi.Input<bool>? remediationEnabled;
  final pulumi.Input<List<String>>? resourceSetIds;

  /// Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  final pulumi.Input<String>? resourceTagLogicalOperator;

  /// A map of resource tags, that if present will filter protections on resources based on the exclude_resource_tags.
  final pulumi.Input<Map<String, String>>? resourceTags;

  /// A resource type to protect. Conflicts with `resource_type_list`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  final pulumi.Input<String>? resourceType;

  /// A list of resource types to protect. Conflicts with `resource_type`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resource_type`.
  final pulumi.Input<List<String>>? resourceTypeLists;

  /// The objects to include in Security Service Policy Data. See the `security_service_policy_data` block.
  final pulumi.Input<PolicySecurityServicePolicyData> securityServicePolicyData;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  PolicyFmsArgs({
    this.deleteAllPolicyResources,
    this.deleteUnusedFmManagedResources,
    this.description,
    this.excludeMap,
    required this.excludeResourceTags,
    this.includeMap,
    this.name,
    this.region,
    this.remediationEnabled,
    this.resourceSetIds,
    this.resourceTagLogicalOperator,
    this.resourceTags,
    this.resourceType,
    this.resourceTypeLists,
    required this.securityServicePolicyData,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deleteAllPolicyResourcesValue = deleteAllPolicyResources;
    if (deleteAllPolicyResourcesValue != null) {
      map['deleteAllPolicyResources'] = deleteAllPolicyResourcesValue;
    }
    final deleteUnusedFmManagedResourcesValue = deleteUnusedFmManagedResources;
    if (deleteUnusedFmManagedResourcesValue != null) {
      map['deleteUnusedFmManagedResources'] =
          deleteUnusedFmManagedResourcesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeMapValue = excludeMap;
    if (excludeMapValue != null) {
      map['excludeMap'] = pulumi.Input.mapOptionalInputValue<PolicyExcludeMap,
          Map<String, dynamic>>(excludeMapValue, (value) => value.toMap());
    }
    map['excludeResourceTags'] = excludeResourceTags;
    final includeMapValue = includeMap;
    if (includeMapValue != null) {
      map['includeMap'] = pulumi.Input.mapOptionalInputValue<PolicyIncludeMap,
          Map<String, dynamic>>(includeMapValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final remediationEnabledValue = remediationEnabled;
    if (remediationEnabledValue != null) {
      map['remediationEnabled'] = remediationEnabledValue;
    }
    final resourceSetIdsValue = resourceSetIds;
    if (resourceSetIdsValue != null) {
      map['resourceSetIds'] = resourceSetIdsValue;
    }
    final resourceTagLogicalOperatorValue = resourceTagLogicalOperator;
    if (resourceTagLogicalOperatorValue != null) {
      map['resourceTagLogicalOperator'] = resourceTagLogicalOperatorValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    final resourceTypeListsValue = resourceTypeLists;
    if (resourceTypeListsValue != null) {
      map['resourceTypeLists'] = resourceTypeListsValue;
    }
    map['securityServicePolicyData'] = pulumi.Input.mapInputValue<
            PolicySecurityServicePolicyData, Map<String, dynamic>>(
        securityServicePolicyData, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory PolicyFmsArgs.fromMap(Map<String, dynamic> map) {
    return PolicyFmsArgs(
      deleteAllPolicyResources:
          pulumi.Input.asOptionalInput<bool>(map['deleteAllPolicyResources']),
      deleteUnusedFmManagedResources: pulumi.Input.asOptionalInput<bool>(
          map['deleteUnusedFmManagedResources']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      excludeMap:
          pulumi.Input.asOptionalInput<PolicyExcludeMap>(map['excludeMap']),
      excludeResourceTags:
          pulumi.Input.asInput<bool>(map['excludeResourceTags']),
      includeMap:
          pulumi.Input.asOptionalInput<PolicyIncludeMap>(map['includeMap']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      remediationEnabled:
          pulumi.Input.asOptionalInput<bool>(map['remediationEnabled']),
      resourceSetIds:
          pulumi.Input.asOptionalInput<List<String>>(map['resourceSetIds']),
      resourceTagLogicalOperator: pulumi.Input.asOptionalInput<String>(
          map['resourceTagLogicalOperator']),
      resourceTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['resourceTags']),
      resourceType: pulumi.Input.asOptionalInput<String>(map['resourceType']),
      resourceTypeLists:
          pulumi.Input.asOptionalInput<List<String>>(map['resourceTypeLists']),
      securityServicePolicyData:
          pulumi.Input.asInput<PolicySecurityServicePolicyData>(
              map['securityServicePolicyData']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
