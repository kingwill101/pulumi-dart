// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_policy_attachment_customer_managed_policy_reference.dart';

/// {@template pulumi_ssoadmin_customer_managed_policy_attachment_customer_managed_policy_attachment_args_doc}
/// The set of arguments for CustomerManagedPolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_customer_managed_policy_attachment_customer_managed_policy_attachment_args_doc}
class CustomerManagedPolicyAttachmentArgs {
  /// Specifies the name and path of a customer managed policy. See below.
  final pulumi.Input<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference> customerManagedPolicyReference;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  final pulumi.Input<String> instanceArn;
  /// The Amazon Resource Name (ARN) of the Permission Set.
  final pulumi.Input<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [CustomerManagedPolicyAttachmentArgs].
  /// [customerManagedPolicyReference] Specifies the name and path of a customer managed policy. See below.
  /// [instanceArn] The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  /// [permissionSetArn] The Amazon Resource Name (ARN) of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  CustomerManagedPolicyAttachmentArgs({
    required this.customerManagedPolicyReference,
    required this.instanceArn,
    required this.permissionSetArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedPolicyReference': pulumi.Input.mapInputValue<CustomerManagedPolicyAttachmentCustomerManagedPolicyReference, Map<String, dynamic>>(customerManagedPolicyReference, (value) => value.toMap()),
      'instanceArn': instanceArn,
      'permissionSetArn': permissionSetArn,
      'region': ?region,
    };
  }

  factory CustomerManagedPolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return CustomerManagedPolicyAttachmentArgs(
      customerManagedPolicyReference: (CustomerManagedPolicyAttachmentCustomerManagedPolicyReference.fromMap((map['customerManagedPolicyReference']! as Map).cast<String, dynamic>())).input(),
      instanceArn: (map['instanceArn'] as String).input(),
      permissionSetArn: (map['permissionSetArn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

