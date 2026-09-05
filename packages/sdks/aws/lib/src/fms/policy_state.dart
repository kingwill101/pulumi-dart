// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_exclude_map.dart';
import 'policy_include_map.dart';
import 'policy_security_service_policy_data.dart';

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// ARN of the policy.
  final pulumi.Input<String?>? arn;
  /// If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  final pulumi.Input<bool?>? deleteAllPolicyResources;
  /// If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  final pulumi.Input<bool?>? deleteUnusedFmManagedResources;
  /// Description of the AWS Network Firewall firewall policy.
  final pulumi.Input<String?>? description;
  /// Map of lists of accounts and OUs to exclude from the policy. See the `excludeMap` block.
  final pulumi.Input<PolicyExcludeMap?>? excludeMap;
  /// Whether resources with the tags specified in `resourceTags` are excluded from protection. If `true`, tagged resources are not protected by this policy. If `false` and `resourceTags` are populated, resources that contain those tags are protected by this policy.
  final pulumi.Input<bool?>? excludeResourceTags;
  /// Map of lists of accounts and OUs to include in the policy. See the `includeMap` block.
  final pulumi.Input<PolicyIncludeMap?>? includeMap;
  /// Friendly name of the AWS Firewall Manager Policy.
  final pulumi.Input<String?>? name;
  /// Unique identifier for each update to the policy.
  final pulumi.Input<String?>? policyUpdateToken;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether the policy is automatically applied to resources that already exist in the account.
  final pulumi.Input<bool?>? remediationEnabled;
  /// Set of resource set IDs associated with the policy.
  final pulumi.Input<List<String>?>? resourceSetIds;
  /// Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  final pulumi.Input<String?>? resourceTagLogicalOperator;
  /// Map of resource tags that, if present, filter protections on resources based on `excludeResourceTags`.
  final pulumi.Input<Map<String, String>?>? resourceTags;
  /// Resource type to protect. Conflicts with `resourceTypeList`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  final pulumi.Input<String?>? resourceType;
  /// List of resource types to protect. Conflicts with `resourceType`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resourceType`.
  final pulumi.Input<List<String>?>? resourceTypeLists;
  /// Objects to include in Security Service Policy Data. See the `securityServicePolicyData` block.
  final pulumi.Input<PolicySecurityServicePolicyData?>? securityServicePolicyData;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [PolicyState].
  /// [arn] ARN of the policy.
  /// [deleteAllPolicyResources] If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  /// [deleteUnusedFmManagedResources] If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  /// [description] Description of the AWS Network Firewall firewall policy.
  /// [excludeMap] Map of lists of accounts and OUs to exclude from the policy. See the `excludeMap` block.
  /// [excludeResourceTags] Whether resources with the tags specified in `resourceTags` are excluded from protection. If `true`, tagged resources are not protected by this policy. If `false` and `resourceTags` are populated, resources that contain those tags are protected by this policy.
  /// [includeMap] Map of lists of accounts and OUs to include in the policy. See the `includeMap` block.
  /// [name] Friendly name of the AWS Firewall Manager Policy.
  /// [policyUpdateToken] Unique identifier for each update to the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remediationEnabled] Whether the policy is automatically applied to resources that already exist in the account.
  /// [resourceSetIds] Set of resource set IDs associated with the policy.
  /// [resourceTagLogicalOperator] Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  /// [resourceTags] Map of resource tags that, if present, filter protections on resources based on `excludeResourceTags`.
  /// [resourceType] Resource type to protect. Conflicts with `resourceTypeList`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  /// [resourceTypeLists] List of resource types to protect. Conflicts with `resourceType`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resourceType`.
  /// [securityServicePolicyData] Objects to include in Security Service Policy Data. See the `securityServicePolicyData` block.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const PolicyState({
    this.arn,
    this.deleteAllPolicyResources,
    this.deleteUnusedFmManagedResources,
    this.description,
    this.excludeMap,
    this.excludeResourceTags,
    this.includeMap,
    this.name,
    this.policyUpdateToken,
    this.region,
    this.remediationEnabled,
    this.resourceSetIds,
    this.resourceTagLogicalOperator,
    this.resourceTags,
    this.resourceType,
    this.resourceTypeLists,
    this.securityServicePolicyData,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAllPolicyResources: (() { final guardedValue = map['deleteAllPolicyResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteUnusedFmManagedResources: (() { final guardedValue = map['deleteUnusedFmManagedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeMap: (() { final guardedValue = map['excludeMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyExcludeMap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      excludeResourceTags: (() { final guardedValue = map['excludeResourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeMap: (() { final guardedValue = map['includeMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyIncludeMap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyUpdateToken: (() { final guardedValue = map['policyUpdateToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remediationEnabled: (() { final guardedValue = map['remediationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceSetIds: (() { final guardedValue = map['resourceSetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceTagLogicalOperator: (() { final guardedValue = map['resourceTagLogicalOperator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTags: (() { final guardedValue = map['resourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypeLists: (() { final guardedValue = map['resourceTypeLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityServicePolicyData: (() { final guardedValue = map['securityServicePolicyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicySecurityServicePolicyData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
