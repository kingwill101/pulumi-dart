// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../customer_managed_policy_attachment_customer_managed_policy_reference/customer_managed_policy_attachment_customer_managed_policy_reference.dart';

/// The set of arguments for CustomerManagedPolicyAttachment.
class CustomerManagedPolicyAttachmentArgs {
  /// Specifies the name and path of a customer managed policy. See below.
  final Input<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>
      customerManagedPolicyReference;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final Input<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  final Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  CustomerManagedPolicyAttachmentArgs({
    required this.customerManagedPolicyReference,
    required this.instanceArn,
    required this.permissionSetArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerManagedPolicyReference'] = Input.mapInputValue<
            CustomerManagedPolicyAttachmentCustomerManagedPolicyReference,
            Map<String, dynamic>>(
        customerManagedPolicyReference, (value) => value.toMap());
    map['instanceArn'] = instanceArn;
    map['permissionSetArn'] = permissionSetArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CustomerManagedPolicyAttachmentArgs.fromMap(
      Map<String, dynamic> map) {
    return CustomerManagedPolicyAttachmentArgs(
      customerManagedPolicyReference: Input.asInput<
              CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>(
          map['customerManagedPolicyReference']),
      instanceArn: Input.asInput<String>(map['instanceArn']),
      permissionSetArn: Input.asInput<String>(map['permissionSetArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
