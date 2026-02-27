import 'package:pulumi/pulumi.dart';
import '../customer_managed_policy_attachments_exclusive_customer_managed_policy_reference/customer_managed_policy_attachments_exclusive_customer_managed_policy_reference.dart';
import '../customer_managed_policy_attachments_exclusive_timeouts/customer_managed_policy_attachments_exclusive_timeouts.dart';
import 'customer_managed_policy_attachments_exclusive_args.dart';

/// Resource for managing exclusive AWS SSO Admin Customer Managed Policy Attachments.
///
/// This resource is designed to manage all customer managed policy attachments for an SSO permission set. Using this resource, Terraform will remove any customer managed policies attached to the permission set that are not defined in the configuration.
///
/// !> **WARNING:** Do not use this resource together with the `aws.ssoadmin.CustomerManagedPolicyAttachment` resource for the same permission set. Doing so will cause a conflict and will lead to customer managed policies being removed.
///
/// > Destruction of this resource means Terraform will no longer manage the customer managed policy attachments, **but will not detach any policies**. The permission set will retain all customer managed policies that were attached at the time of destruction.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Disallow Customer Managed Policy Attachments
///
/// To disallow all customer managed policy attachments, omit the `customer_managed_policy_reference` block.
///
/// > Any customer managed policies attached to the permission set will be **removed**.
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `instance_arn` (String) ARN of the SSO Instance.
/// * `permission_set_arn` (String) ARN of the Permission Set.
///
/// #### Optional
///
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Customer Managed Policy Attachments Exclusive using the `instance_arn` and `permission_set_arn` arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/customerManagedPolicyAttachmentsExclusive:CustomerManagedPolicyAttachmentsExclusive example arn:aws:sso:::instance/ssoins-1234567890abcdef,arn:aws:sso:::permissionSet/ssoins-1234567890abcdef/ps-1234567890abcdef
/// ```
class CustomerManagedPolicyAttachmentsExclusive extends CustomResource {
  /// Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  late final Output<
          List<
              CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>?>
      customerManagedPolicyReferences;

  /// ARN of the SSO Instance.
  late final Output<String> instanceArn;

  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  late final Output<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<CustomerManagedPolicyAttachmentsExclusiveTimeouts?>
      timeouts;

  CustomerManagedPolicyAttachmentsExclusive(
    String name, {
    CustomerManagedPolicyAttachmentsExclusiveArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachmentsExclusive:CustomerManagedPolicyAttachmentsExclusive',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customerManagedPolicyReferences = registerOutput<
            List<
                CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>?>(
        'customerManagedPolicyReferences');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.permissionSetArn = registerOutput<String>('permissionSetArn');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<CustomerManagedPolicyAttachmentsExclusiveTimeouts?>(
            'timeouts');
  }
}
