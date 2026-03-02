// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_policy_attachment_customer_managed_policy_reference.dart';

/// Input properties used for looking up and filtering CustomerManagedPolicyAttachment resources.
class CustomerManagedPolicyAttachmentState {
  /// Specifies the name and path of a customer managed policy. See below.
  final pulumi.Input<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>? customerManagedPolicyReference;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String>? instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String>? permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CustomerManagedPolicyAttachmentState].
  /// [customerManagedPolicyReference] Specifies the name and path of a customer managed policy. See below.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  CustomerManagedPolicyAttachmentState({
    this.customerManagedPolicyReference,
    this.instanceArn,
    this.permissionSetArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedPolicyReference': ?pulumi.Input.mapOptionalInputValue<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference, Map<String, dynamic>>(customerManagedPolicyReference, (value) => value.toMap()),
      'instanceArn': ?instanceArn,
      'permissionSetArn': ?permissionSetArn,
      'region': ?region,
    };
  }

  factory CustomerManagedPolicyAttachmentState.fromMap(Map<String, dynamic> map) {
    return CustomerManagedPolicyAttachmentState(
      customerManagedPolicyReference: map['customerManagedPolicyReference'] == null ? null : (CustomerManagedPolicyAttachmentCustomerManagedPolicyReference.fromMap((map['customerManagedPolicyReference'] as Map).cast<String, dynamic>())).input(),
      instanceArn: map['instanceArn'] == null ? null : (map['instanceArn'] as String).input(),
      permissionSetArn: map['permissionSetArn'] == null ? null : (map['permissionSetArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

