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
    pulumi.Output<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>? customerManagedPolicyReference,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? permissionSetArn,
    pulumi.Output<String>? region,
  }) :
      customerManagedPolicyReference = pulumi.Input.asOptionalInput<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>(customerManagedPolicyReference),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      permissionSetArn = pulumi.Input.asOptionalInput<String>(permissionSetArn),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      customerManagedPolicyReference: map['customerManagedPolicyReference'] == null ? null : pulumi.Output.create<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference>(CustomerManagedPolicyAttachmentCustomerManagedPolicyReference.fromMap((map['customerManagedPolicyReference'] as Map).cast<String, dynamic>())),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      permissionSetArn: map['permissionSetArn'] == null ? null : pulumi.Output.create<String>(map['permissionSetArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

