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
    return <String, dynamic>{
      'deleteAllPolicyResources': ?deleteAllPolicyResources,
      'deleteUnusedFmManagedResources': ?deleteUnusedFmManagedResources,
      'description': ?description,
      'excludeMap':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyExcludeMap,
            Map<String, dynamic>
          >(excludeMap, (value) => value.toMap()),
      'excludeResourceTags': excludeResourceTags,
      'includeMap':
          ?pulumi.Input.mapOptionalInputValue<
            PolicyIncludeMap,
            Map<String, dynamic>
          >(includeMap, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'remediationEnabled': ?remediationEnabled,
      'resourceSetIds': ?resourceSetIds,
      'resourceTagLogicalOperator': ?resourceTagLogicalOperator,
      'resourceTags': ?resourceTags,
      'resourceType': ?resourceType,
      'resourceTypeLists': ?resourceTypeLists,
      'securityServicePolicyData':
          pulumi.Input.mapInputValue<
            PolicySecurityServicePolicyData,
            Map<String, dynamic>
          >(securityServicePolicyData, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      deleteAllPolicyResources: (() {
        final guardedValue = map['deleteAllPolicyResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deleteUnusedFmManagedResources: (() {
        final guardedValue = map['deleteUnusedFmManagedResources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeMap: (() {
        final guardedValue = map['excludeMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyExcludeMap.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      excludeResourceTags: pulumi.Input.fromValue(
        map['excludeResourceTags'] as bool,
      ),
      includeMap: (() {
        final guardedValue = map['includeMap'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PolicyIncludeMap.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remediationEnabled: (() {
        final guardedValue = map['remediationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceSetIds: (() {
        final guardedValue = map['resourceSetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceTagLogicalOperator: (() {
        final guardedValue = map['resourceTagLogicalOperator'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceTags: (() {
        final guardedValue = map['resourceTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceTypeLists: (() {
        final guardedValue = map['resourceTypeLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      securityServicePolicyData: pulumi.Input.fromValue(
        PolicySecurityServicePolicyData.fromMap(
          (map['securityServicePolicyData']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
