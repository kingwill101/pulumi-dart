import 'package:pulumi/pulumi.dart';
import '../customer_managed_policy_attachment_customer_managed_policy_reference/customer_managed_policy_attachment_customer_managed_policy_reference.dart';
import 'customer_managed_policy_attachment_args.dart';

/// Provides a customer managed policy attachment for a Single Sign-On (SSO) Permission Set resource
///
/// !> **WARNING:** Do not use this resource together with the `aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive` resource for the same permission set. Doing so will cause a conflict and will lead to customer managed policies being removed.
///
/// > **NOTE:** Creating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Managed Policy Attachments using the `name`, `path`, `permission_set_arn`, and `instance_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment example TestPolicy,/,arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class CustomerManagedPolicyAttachment extends CustomResource {
  /// Specifies the name and path of a customer managed policy. See below.
  late final Output<
          CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>
      customerManagedPolicyReference;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final Output<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  CustomerManagedPolicyAttachment(
    String name, {
    CustomerManagedPolicyAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachment:CustomerManagedPolicyAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customerManagedPolicyReference = registerOutput<
            CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>(
        'customerManagedPolicyReference');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
  }
}
