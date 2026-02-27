import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_organizations_args.dart';

/// Provides a resource to manage a resource-based delegation policy that can be used to delegate policy management for AWS Organizations to specified member accounts to perform policy actions that are by default available only to the management account. See the [_AWS Organizations User Guide_](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_delegate_policies.html) for more information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.organizations.ResourcePolicy` using the resource policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/resourcePolicy:ResourcePolicy example rp-12345678
/// ```
class ResourcePolicyOrganizations extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the resource policy.
  late final pulumi.Output<String> arn;

  /// Content for the resource policy. The text must be correctly formatted JSON that complies with the syntax for the resource policy's type. See the [_AWS Organizations User Guide_](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_delegate_examples.html) for examples.
  late final pulumi.Output<String> content;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ResourcePolicyOrganizations(
    String name, {
    ResourcePolicyOrganizationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
