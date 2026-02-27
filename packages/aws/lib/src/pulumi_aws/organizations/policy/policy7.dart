import 'package:pulumi/pulumi.dart';
import 'policy_args7.dart';

/// Provides a resource to manage an [AWS Organizations policy](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.organizations.Policy` using the policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/policy:Policy example p-12345678
/// ```
class Policy7 extends CustomResource {
  /// Amazon Resource Name (ARN) of the policy.
  late final Output<String> arn;

  /// The policy content to add to the new policy.
  /// For example, if you create a [service control policy (SCP)](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html), this string must be JSON text that specifies the permissions that admins in attached accounts can delegate to their users, groups, and roles.
  /// For more information about the AI Services opt-out Policy syntax, see the [AI Services opt-out Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out_syntax.html).
  /// For more information about the Backup Policy syntax, see the [Backup Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup_syntax.html).
  /// For more information about the Bedrock Policy syntax, see the [Bedrock Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_bedrock_syntax.html).
  /// For more information about the Chatbot Policy syntax, see the [Chatbot Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_chatbot_syntax.html).
  /// For more information about the Declarative Policy syntax, see the [Declarative Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_declarative_syntax.html).
  /// For more information about the Inspector Policy syntax, see the [Inspector Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_inspector_syntax.html).
  /// For more information about the RCP syntax, see the [Resource Control Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_rcps_syntax.html).
  /// For more information about the S3 Policy syntax, see the [S3 Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_s3_syntax.html).
  /// For more information about the Security Hub Policy syntax, see the [Security Hub Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_security_hub_syntax.html). For more information about the SCP syntax, see the [Service Control Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html).
  /// For more information on the Tag Policy syntax, see the [Tag Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_example-tag-policies.html).
  /// For more information about the Upgrade Rollout Policy syntax, see the [Upgrade Rollout Policy Syntax documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_upgrade_syntax.html).
  late final Output<String> content;

  /// A description to assign to the policy.
  late final Output<String?> description;

  /// The friendly name to assign to the policy.
  late final Output<String> name;

  /// If set to `true`, destroy will **not** delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy.
  late final Output<bool?> skipDestroy;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of policy to create. Valid values are `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY` (RCP), `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY` (SCP), `TAG_POLICY`, and `UPGRADE_ROLLOUT_POLICY`. Defaults to `SERVICE_CONTROL_POLICY`.
  late final Output<String?> type;

  Policy7(
    String name, {
    PolicyArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/policy:Policy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.content = registerOutput<String>('content');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String?>('type');
  }
}
