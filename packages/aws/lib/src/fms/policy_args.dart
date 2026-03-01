// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_exclude_map.dart';
import 'policy_include_map.dart';
import 'policy_security_service_policy_data.dart';

/// {@template pulumi_fms_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_fms_policy_policy_args_doc}
class PolicyArgs {
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

  /// Creates a new [PolicyArgs].
  /// [deleteAllPolicyResources] If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  /// [deleteUnusedFmManagedResources] If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  /// [description] The description of the AWS Network Firewall firewall policy.
  /// [excludeMap] A map of lists of accounts and OU's to exclude from the policy. See the `exclude_map` block.
  /// [excludeResourceTags] A boolean value, if true the tags that are specified in the `resource_tags` are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy.
  /// [includeMap] A map of lists of accounts and OU's to include in the policy. See the `include_map` block.
  /// [name] The friendly name of the AWS Firewall Manager Policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remediationEnabled] A boolean value, indicates if the policy should automatically applied to resources that already exist in the account.
  /// [resourceSetIds] Optional.
  /// [resourceTagLogicalOperator] Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  /// [resourceTags] A map of resource tags, that if present will filter protections on resources based on the exclude_resource_tags.
  /// [resourceType] A resource type to protect. Conflicts with `resource_type_list`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  /// [resourceTypeLists] A list of resource types to protect. Conflicts with `resource_type`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resource_type`.
  /// [securityServicePolicyData] The objects to include in Security Service Policy Data. See the `security_service_policy_data` block.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  PolicyArgs({
    bool? deleteAllPolicyResources,
    bool? deleteUnusedFmManagedResources,
    String? description,
    PolicyExcludeMap? excludeMap,
    required bool excludeResourceTags,
    PolicyIncludeMap? includeMap,
    String? name,
    String? region,
    bool? remediationEnabled,
    List<String>? resourceSetIds,
    String? resourceTagLogicalOperator,
    Map<String, String>? resourceTags,
    String? resourceType,
    List<String>? resourceTypeLists,
    required PolicySecurityServicePolicyData securityServicePolicyData,
    Map<String, String>? tags,
  }) :
      deleteAllPolicyResources = pulumi.Input.asOptionalInput<bool>(deleteAllPolicyResources),
      deleteUnusedFmManagedResources = pulumi.Input.asOptionalInput<bool>(deleteUnusedFmManagedResources),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludeMap = pulumi.Input.asOptionalInput<PolicyExcludeMap>(excludeMap),
      excludeResourceTags = pulumi.Input.asInput<bool>(excludeResourceTags),
      includeMap = pulumi.Input.asOptionalInput<PolicyIncludeMap>(includeMap),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      remediationEnabled = pulumi.Input.asOptionalInput<bool>(remediationEnabled),
      resourceSetIds = pulumi.Input.asOptionalInput<List<String>>(resourceSetIds),
      resourceTagLogicalOperator = pulumi.Input.asOptionalInput<String>(resourceTagLogicalOperator),
      resourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      resourceTypeLists = pulumi.Input.asOptionalInput<List<String>>(resourceTypeLists),
      securityServicePolicyData = pulumi.Input.asInput<PolicySecurityServicePolicyData>(securityServicePolicyData),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteAllPolicyResources': ?deleteAllPolicyResources,
      'deleteUnusedFmManagedResources': ?deleteUnusedFmManagedResources,
      'description': ?description,
      'excludeMap': ?pulumi.Input.mapOptionalInputValue<PolicyExcludeMap, Map<String, dynamic>>(excludeMap, (value) => value.toMap()),
      'excludeResourceTags': excludeResourceTags,
      'includeMap': ?pulumi.Input.mapOptionalInputValue<PolicyIncludeMap, Map<String, dynamic>>(includeMap, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'remediationEnabled': ?remediationEnabled,
      'resourceSetIds': ?resourceSetIds,
      'resourceTagLogicalOperator': ?resourceTagLogicalOperator,
      'resourceTags': ?resourceTags,
      'resourceType': ?resourceType,
      'resourceTypeLists': ?resourceTypeLists,
      'securityServicePolicyData': pulumi.Input.mapInputValue<PolicySecurityServicePolicyData, Map<String, dynamic>>(securityServicePolicyData, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      deleteAllPolicyResources: map['deleteAllPolicyResources'] == null ? null : map['deleteAllPolicyResources'] as bool,
      deleteUnusedFmManagedResources: map['deleteUnusedFmManagedResources'] == null ? null : map['deleteUnusedFmManagedResources'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      excludeMap: map['excludeMap'] == null ? null : PolicyExcludeMap.fromMap((map['excludeMap'] as Map).cast<String, dynamic>()),
      excludeResourceTags: map['excludeResourceTags'] as bool,
      includeMap: map['includeMap'] == null ? null : PolicyIncludeMap.fromMap((map['includeMap'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      remediationEnabled: map['remediationEnabled'] == null ? null : map['remediationEnabled'] as bool,
      resourceSetIds: map['resourceSetIds'] == null ? null : (map['resourceSetIds'] as List).cast<String>(),
      resourceTagLogicalOperator: map['resourceTagLogicalOperator'] == null ? null : map['resourceTagLogicalOperator'] as String,
      resourceTags: map['resourceTags'] == null ? null : (map['resourceTags'] as Map).cast<String, String>(),
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      resourceTypeLists: map['resourceTypeLists'] == null ? null : (map['resourceTypeLists'] as List).cast<String>(),
      securityServicePolicyData: PolicySecurityServicePolicyData.fromMap((map['securityServicePolicyData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

