// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../customer_managed_policy_attachment_customer_managed_policy_reference/customer_managed_policy_attachment_customer_managed_policy_reference.dart';

/// The set of arguments for CustomerManagedPolicyAttachment.
class CustomerManagedPolicyAttachmentArgs {
  /// Specifies the name and path of a customer managed policy. See below.
  final pulumi
      .Input<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>
      customerManagedPolicyReference;

  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  CustomerManagedPolicyAttachmentArgs({
    required this.customerManagedPolicyReference,
    required this.instanceArn,
    required this.permissionSetArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerManagedPolicyReference'] = pulumi.Input.mapInputValue<
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
      customerManagedPolicyReference: pulumi.Input.asInput<
              CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>(
          map['customerManagedPolicyReference']),
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      permissionSetArn: pulumi.Input.asInput<String>(map['permissionSetArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
