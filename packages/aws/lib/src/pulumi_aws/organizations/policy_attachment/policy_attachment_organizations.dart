import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_attachment_organizations_args.dart';

/// Provides a resource to attach an AWS Organizations policy to an organization account, root, or unit.
///
/// ## Example Usage
///
/// ### Organization Account
///
///
///
/// ### Organization Root
///
///
///
/// ### Organization Unit
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `policy_id` (String) Organizations policy ID.
/// * `target_id` (String) Organizations target ID (account, OU, or root).
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.organizations.PolicyAttachment` using the target ID and policy ID. For example:
///
/// With an account target:
///
/// ```sh
/// $ pulumi import aws:organizations/policyAttachment:PolicyAttachment example 123456789012:p-12345678
/// ```
class PolicyAttachmentOrganizations extends pulumi.CustomResource {
  /// The unique identifier (ID) of the policy that you want to attach to the target.
  late final pulumi.Output<String> policyId;

  /// If set to `true`, destroy will **not** detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy.
  late final pulumi.Output<bool?> skipDestroy;

  /// The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to.
  late final pulumi.Output<String> targetId;

  PolicyAttachmentOrganizations(
    String name, {
    PolicyAttachmentOrganizationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/policyAttachment:PolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyId = registerOutput<String>('policyId');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.targetId = registerOutput<String>('targetId');
  }
}
