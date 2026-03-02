// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_policy_attachments_exclusive_customer_managed_policy_reference.dart';
import 'customer_managed_policy_attachments_exclusive_timeouts.dart';

/// {@template pulumi_ssoadmin_customer_managed_policy_attachments_exclusive_customer_managed_policy_attachments_exclusive_args_doc}
/// The set of arguments for CustomerManagedPolicyAttachmentsExclusive.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_customer_managed_policy_attachments_exclusive_customer_managed_policy_attachments_exclusive_args_doc}
class CustomerManagedPolicyAttachmentsExclusiveArgs {
  /// Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  final pulumi.Input<List<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>>? customerManagedPolicyReferences;
  /// ARN of the SSO Instance.
  final pulumi.Input<String> instanceArn;
  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<CustomerManagedPolicyAttachmentsExclusiveTimeouts>? timeouts;

  /// Creates a new [CustomerManagedPolicyAttachmentsExclusiveArgs].
  /// [customerManagedPolicyReferences] Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  /// [instanceArn] ARN of the SSO Instance.
  /// [permissionSetArn] ARN of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  CustomerManagedPolicyAttachmentsExclusiveArgs({
    this.customerManagedPolicyReferences,
    required this.instanceArn,
    required this.permissionSetArn,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedPolicyReferences': ?pulumi.Input.mapOptionalInputValue<List<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>, List<Map<String, dynamic>>>(customerManagedPolicyReferences, (value) => pulumi.Input.encodeList<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceArn': instanceArn,
      'permissionSetArn': permissionSetArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CustomerManagedPolicyAttachmentsExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CustomerManagedPolicyAttachmentsExclusiveArgs.fromMap(Map<String, dynamic> map) {
    return CustomerManagedPolicyAttachmentsExclusiveArgs(
      customerManagedPolicyReferences: map['customerManagedPolicyReferences'] == null ? null : (pulumi.Input.decodeList<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>(map['customerManagedPolicyReferences'], (value) => CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instanceArn: (map['instanceArn'] as String).input(),
      permissionSetArn: (map['permissionSetArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (CustomerManagedPolicyAttachmentsExclusiveTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

