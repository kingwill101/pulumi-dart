import 'package:pulumi/pulumi.dart';
import '../policy_exclude_map/policy_exclude_map.dart';
import '../policy_include_map/policy_include_map.dart';
import '../policy_security_service_policy_data/policy_security_service_policy_data.dart';
import 'policy_args4.dart';

/// Provides a resource to create an AWS Firewall Manager policy. You need to be using AWS organizations and have enabled the Firewall Manager administrator account.
///
/// > **NOTE:** Due to limitations with testing, we provide it as best effort. If you find it useful, and have the ability to help test or notice issues, consider reaching out to us on GitHub.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Firewall Manager policies using the policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:fms/policy:Policy example 5be49585-a7e3-4c49-dde1-a179fe4a619a
/// ```
class Policy4 extends CustomResource {
  late final Output<String> arn;

  /// If true, the request will also perform a clean-up process. Defaults to `true`. More information can be found here [AWS Firewall Manager delete policy](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_DeletePolicy.html)
  late final Output<bool?> deleteAllPolicyResources;

  /// If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to `false`. More information can be found here [AWS Firewall Manager policy contents](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html)
  late final Output<bool?> deleteUnusedFmManagedResources;

  /// The description of the AWS Network Firewall firewall policy.
  late final Output<String?> description;

  /// A map of lists of accounts and OU's to exclude from the policy. See the `exclude_map` block.
  late final Output<PolicyExcludeMap?> excludeMap;

  /// A boolean value, if true the tags that are specified in the `resource_tags` are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy.
  late final Output<bool> excludeResourceTags;

  /// A map of lists of accounts and OU's to include in the policy. See the `include_map` block.
  late final Output<PolicyIncludeMap?> includeMap;

  /// The friendly name of the AWS Firewall Manager Policy.
  late final Output<String> name;

  /// A unique identifier for each update to the policy.
  late final Output<String> policyUpdateToken;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A boolean value, indicates if the policy should automatically applied to resources that already exist in the account.
  late final Output<bool?> remediationEnabled;
  late final Output<List<String>> resourceSetIds;

  /// Controls how multiple resource tags are combined: with AND, so that a resource must have all tags to be included or excluded, or OR, so that a resource must have at least one tag. The valid values are `AND` and `OR`.
  late final Output<String> resourceTagLogicalOperator;

  /// A map of resource tags, that if present will filter protections on resources based on the exclude_resource_tags.
  late final Output<Map<String, String>?> resourceTags;

  /// A resource type to protect. Conflicts with `resource_type_list`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values.
  late final Output<String> resourceType;

  /// A list of resource types to protect. Conflicts with `resource_type`. See the [FMS API Reference](https://docs.aws.amazon.com/fms/2018-01-01/APIReference/API_Policy.html#fms-Type-Policy-ResourceType) for more information about supported values. Lists with only one element are not supported, instead use `resource_type`.
  late final Output<List<String>> resourceTypeLists;

  /// The objects to include in Security Service Policy Data. See the `security_service_policy_data` block.
  late final Output<PolicySecurityServicePolicyData> securityServicePolicyData;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Policy4(
    String name, {
    PolicyArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fms/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deleteAllPolicyResources =
        registerOutput<bool?>('deleteAllPolicyResources');
    this.deleteUnusedFmManagedResources =
        registerOutput<bool?>('deleteUnusedFmManagedResources');
    this.description = registerOutput<String?>('description');
    this.excludeMap = registerOutput<PolicyExcludeMap?>('excludeMap');
    this.excludeResourceTags = registerOutput<bool>('excludeResourceTags');
    this.includeMap = registerOutput<PolicyIncludeMap?>('includeMap');
    this.name = registerOutput<String>('name');
    this.policyUpdateToken = registerOutput<String>('policyUpdateToken');
    this.region = registerOutput<String>('region');
    this.remediationEnabled = registerOutput<bool?>('remediationEnabled');
    this.resourceSetIds = registerOutput<List<String>>('resourceSetIds');
    this.resourceTagLogicalOperator =
        registerOutput<String>('resourceTagLogicalOperator');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
    this.resourceType = registerOutput<String>('resourceType');
    this.resourceTypeLists = registerOutput<List<String>>('resourceTypeLists');
    this.securityServicePolicyData =
        registerOutput<PolicySecurityServicePolicyData>(
            'securityServicePolicyData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
