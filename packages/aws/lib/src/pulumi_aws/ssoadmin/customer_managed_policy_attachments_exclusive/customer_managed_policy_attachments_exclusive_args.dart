// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../customer_managed_policy_attachments_exclusive_customer_managed_policy_reference/customer_managed_policy_attachments_exclusive_customer_managed_policy_reference.dart';
import '../customer_managed_policy_attachments_exclusive_timeouts/customer_managed_policy_attachments_exclusive_timeouts.dart';

/// The set of arguments for CustomerManagedPolicyAttachmentsExclusive.
class CustomerManagedPolicyAttachmentsExclusiveArgs {
  /// Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  final pulumi.Input<
          List<
              CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>>?
      customerManagedPolicyReferences;

  /// ARN of the SSO Instance.
  final pulumi.Input<String> instanceArn;

  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> permissionSetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<CustomerManagedPolicyAttachmentsExclusiveTimeouts>?
      timeouts;

  CustomerManagedPolicyAttachmentsExclusiveArgs({
    this.customerManagedPolicyReferences,
    required this.instanceArn,
    required this.permissionSetArn,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customerManagedPolicyReferencesValue =
        customerManagedPolicyReferences;
    if (customerManagedPolicyReferencesValue != null) {
      map['customerManagedPolicyReferences'] = pulumi
          .Input.mapOptionalInputValue<
              List<
                  CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>,
              List<Map<String, dynamic>>>(
          customerManagedPolicyReferencesValue,
          (value) => pulumi.Input.encodeList<
              CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['instanceArn'] = instanceArn;
    map['permissionSetArn'] = permissionSetArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          CustomerManagedPolicyAttachmentsExclusiveTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory CustomerManagedPolicyAttachmentsExclusiveArgs.fromMap(
      Map<String, dynamic> map) {
    return CustomerManagedPolicyAttachmentsExclusiveArgs(
      customerManagedPolicyReferences: pulumi.Input.asOptionalInput<
              List<
                  CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>>(
          map['customerManagedPolicyReferences']),
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      permissionSetArn: pulumi.Input.asInput<String>(map['permissionSetArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<
          CustomerManagedPolicyAttachmentsExclusiveTimeouts>(map['timeouts']),
    );
  }
}
