import 'package:pulumi/pulumi.dart';
import 'policy_attachment_args3.dart';

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
class PolicyAttachment3 extends CustomResource {
  /// The unique identifier (ID) of the policy that you want to attach to the target.
  late final Output<String> policyId;

  /// If set to `true`, destroy will **not** detach the policy and instead just remove the resource from state. This can be useful in situations where the attachment must be preserved to meet the AWS minimum requirement of 1 attached policy.
  late final Output<bool?> skipDestroy;

  /// The unique identifier (ID) of the root, organizational unit, or account number that you want to attach the policy to.
  late final Output<String> targetId;

  PolicyAttachment3(
    String name, {
    PolicyAttachmentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/policyAttachment:PolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.policyId = registerOutput<String>('policyId');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.targetId = registerOutput<String>('targetId');
  }
}
