// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_exclude_map.dart';
import 'policy_include_map.dart';
import 'policy_security_service_policy_data.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  final pulumi.Input<String>? arn;
  /// If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  final pulumi.Input<bool>? deleteAllPolicyResources;
  /// If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  final pulumi.Input<bool>? deleteUnusedFmManagedResources;
  /// The description of the AWS Network Firewall firewall policy.
  final pulumi.Input<String>? description;
  /// A map of lists of accounts and OU's to exclude from the policy. See the `exclude_map` block.
  final pulumi.Input<PolicyExcludeMap>? excludeMap;
  /// A boolean value, if true the tags that are specified in the `resource_tags` are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy.
  final pulumi.Input<bool>? excludeResourceTags;
  /// A map of lists of accounts and OU's to include in the policy. See the `include_map` block.
  final pulumi.Input<PolicyIncludeMap>? includeMap;
  /// The friendly name of the AWS Firewall Manager Policy.
  final pulumi.Input<String>? name;
  /// A unique identifier for each update to the policy.
  final pulumi.Input<String>? policyUpdateToken;
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
  final pulumi.Input<PolicySecurityServicePolicyData>? securityServicePolicyData;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [PolicyState].
  /// [arn] Optional.
  /// [deleteAllPolicyResources] If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  /// [deleteUnusedFmManagedResources] If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  /// [description] The description of the AWS Network Firewall firewall policy.
  /// [excludeMap] A map of lists of accounts and OU's to exclude from the policy. See the `exclude_map` block.
  /// [excludeResourceTags] A boolean value, if true the tags that are specified in the `resource_tags` are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy.
  /// [includeMap] A map of lists of accounts and OU's to include in the policy. See the `include_map` block.
  /// [name] The friendly name of the AWS Firewall Manager Policy.
  /// [policyUpdateToken] A unique identifier for each update to the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remediationEnabled] A boolean value, indicates if the policy should automatically applied to resources that already exist in the account.
  /// [resourceSetIds] Optional.
  /// [resourceTagLogicalOperator] Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  /// [resourceTags] A map of resource tags, that if present will filter protections on resources based on the exclude_resource_tags.
  /// [resourceType] A resource type to protect. Conflicts with `resource_type_list`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  /// [resourceTypeLists] A list of resource types to protect. Conflicts with `resource_type`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resource_type`.
  /// [securityServicePolicyData] The objects to include in Security Service Policy Data. See the `security_service_policy_data` block.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  PolicyState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? deleteAllPolicyResources,
    pulumi.Output<bool>? deleteUnusedFmManagedResources,
    pulumi.Output<String>? description,
    pulumi.Output<PolicyExcludeMap>? excludeMap,
    pulumi.Output<bool>? excludeResourceTags,
    pulumi.Output<PolicyIncludeMap>? includeMap,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyUpdateToken,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? remediationEnabled,
    pulumi.Output<List<String>>? resourceSetIds,
    pulumi.Output<String>? resourceTagLogicalOperator,
    pulumi.Output<Map<String, String>>? resourceTags,
    pulumi.Output<String>? resourceType,
    pulumi.Output<List<String>>? resourceTypeLists,
    pulumi.Output<PolicySecurityServicePolicyData>? securityServicePolicyData,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      deleteAllPolicyResources = pulumi.Input.asOptionalInput<bool>(deleteAllPolicyResources),
      deleteUnusedFmManagedResources = pulumi.Input.asOptionalInput<bool>(deleteUnusedFmManagedResources),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludeMap = pulumi.Input.asOptionalInput<PolicyExcludeMap>(excludeMap),
      excludeResourceTags = pulumi.Input.asOptionalInput<bool>(excludeResourceTags),
      includeMap = pulumi.Input.asOptionalInput<PolicyIncludeMap>(includeMap),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyUpdateToken = pulumi.Input.asOptionalInput<String>(policyUpdateToken),
      region = pulumi.Input.asOptionalInput<String>(region),
      remediationEnabled = pulumi.Input.asOptionalInput<bool>(remediationEnabled),
      resourceSetIds = pulumi.Input.asOptionalInput<List<String>>(resourceSetIds),
      resourceTagLogicalOperator = pulumi.Input.asOptionalInput<String>(resourceTagLogicalOperator),
      resourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(resourceTags),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      resourceTypeLists = pulumi.Input.asOptionalInput<List<String>>(resourceTypeLists),
      securityServicePolicyData = pulumi.Input.asOptionalInput<PolicySecurityServicePolicyData>(securityServicePolicyData),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'deleteAllPolicyResources': ?deleteAllPolicyResources,
      'deleteUnusedFmManagedResources': ?deleteUnusedFmManagedResources,
      'description': ?description,
      'excludeMap': ?pulumi.Input.mapOptionalInputValue<PolicyExcludeMap, Map<String, dynamic>>(excludeMap, (value) => value.toMap()),
      'excludeResourceTags': ?excludeResourceTags,
      'includeMap': ?pulumi.Input.mapOptionalInputValue<PolicyIncludeMap, Map<String, dynamic>>(includeMap, (value) => value.toMap()),
      'name': ?name,
      'policyUpdateToken': ?policyUpdateToken,
      'region': ?region,
      'remediationEnabled': ?remediationEnabled,
      'resourceSetIds': ?resourceSetIds,
      'resourceTagLogicalOperator': ?resourceTagLogicalOperator,
      'resourceTags': ?resourceTags,
      'resourceType': ?resourceType,
      'resourceTypeLists': ?resourceTypeLists,
      'securityServicePolicyData': ?pulumi.Input.mapOptionalInputValue<PolicySecurityServicePolicyData, Map<String, dynamic>>(securityServicePolicyData, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      deleteAllPolicyResources: map['deleteAllPolicyResources'] == null ? null : pulumi.Output.create<bool>(map['deleteAllPolicyResources'] as bool),
      deleteUnusedFmManagedResources: map['deleteUnusedFmManagedResources'] == null ? null : pulumi.Output.create<bool>(map['deleteUnusedFmManagedResources'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludeMap: map['excludeMap'] == null ? null : pulumi.Output.create<PolicyExcludeMap>(PolicyExcludeMap.fromMap((map['excludeMap'] as Map).cast<String, dynamic>())),
      excludeResourceTags: map['excludeResourceTags'] == null ? null : pulumi.Output.create<bool>(map['excludeResourceTags'] as bool),
      includeMap: map['includeMap'] == null ? null : pulumi.Output.create<PolicyIncludeMap>(PolicyIncludeMap.fromMap((map['includeMap'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyUpdateToken: map['policyUpdateToken'] == null ? null : pulumi.Output.create<String>(map['policyUpdateToken'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      remediationEnabled: map['remediationEnabled'] == null ? null : pulumi.Output.create<bool>(map['remediationEnabled'] as bool),
      resourceSetIds: map['resourceSetIds'] == null ? null : pulumi.Output.create<List<String>>((map['resourceSetIds'] as List).cast<String>()),
      resourceTagLogicalOperator: map['resourceTagLogicalOperator'] == null ? null : pulumi.Output.create<String>(map['resourceTagLogicalOperator'] as String),
      resourceTags: map['resourceTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['resourceTags'] as Map).cast<String, String>()),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      resourceTypeLists: map['resourceTypeLists'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypeLists'] as List).cast<String>()),
      securityServicePolicyData: map['securityServicePolicyData'] == null ? null : pulumi.Output.create<PolicySecurityServicePolicyData>(PolicySecurityServicePolicyData.fromMap((map['securityServicePolicyData'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

