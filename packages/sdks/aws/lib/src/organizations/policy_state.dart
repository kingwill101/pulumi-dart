// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Amazon Resource Name (ARN) of the policy.
  final pulumi.Input<String>? arn;

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
  final pulumi.Input<String>? content;

  /// A description to assign to the policy.
  final pulumi.Input<String>? description;

  /// The friendly name to assign to the policy.
  final pulumi.Input<String>? name;

  /// If set to `true`, destroy will **not** delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy.
  final pulumi.Input<bool>? skipDestroy;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// The type of policy to create. Valid values are `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY` (RCP), `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY` (SCP), `TAG_POLICY`, and `UPGRADE_ROLLOUT_POLICY`. Defaults to `SERVICE_CONTROL_POLICY`.
  final pulumi.Input<String>? type;

  /// Creates a new [PolicyState].
  /// [arn] Amazon Resource Name (ARN) of the policy.
  /// [content] The policy content to add to the new policy.
  /// [description] A description to assign to the policy.
  /// [name] The friendly name to assign to the policy.
  /// [skipDestroy] If set to `true`, destroy will **not** delete the policy and instead just remove the resource from state. This can be useful in situations where the policies (and the associated attachment) must be preserved to meet the AWS minimum requirement of 1 attached policy.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of policy to create. Valid values are `AISERVICES_OPT_OUT_POLICY`, `BACKUP_POLICY`, `BEDROCK_POLICY`, `CHATBOT_POLICY`, `DECLARATIVE_POLICY_EC2`, `INSPECTOR_POLICY`, `RESOURCE_CONTROL_POLICY` (RCP), `S3_POLICY`, `SECURITYHUB_POLICY`, `SERVICE_CONTROL_POLICY` (SCP), `TAG_POLICY`, and `UPGRADE_ROLLOUT_POLICY`. Defaults to `SERVICE_CONTROL_POLICY`.
  PolicyState({
    this.arn,
    this.content,
    this.description,
    this.name,
    this.skipDestroy,
    this.tags,
    this.tagsAll,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'content': ?content,
      'description': ?description,
      'name': ?name,
      'skipDestroy': ?skipDestroy,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipDestroy: (() {
        final guardedValue = map['skipDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
