// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_policy_attachments_exclusive_customer_managed_policy_reference.dart';
import 'customer_managed_policy_attachments_exclusive_timeouts.dart';

/// Input properties used for looking up and filtering CustomerManagedPolicyAttachmentsExclusive resources.
class CustomerManagedPolicyAttachmentsExclusiveState {
  /// Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  final pulumi.Input<List<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>>? customerManagedPolicyReferences;
  /// ARN of the SSO Instance.
  final pulumi.Input<String>? instanceArn;
  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<CustomerManagedPolicyAttachmentsExclusiveTimeouts>? timeouts;

  /// Creates a new [CustomerManagedPolicyAttachmentsExclusiveState].
  /// [customerManagedPolicyReferences] Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  /// [instanceArn] ARN of the SSO Instance.
  /// [permissionSetArn] ARN of the Permission Set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  CustomerManagedPolicyAttachmentsExclusiveState({
    pulumi.Output<List<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>>? customerManagedPolicyReferences,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? permissionSetArn,
    pulumi.Output<String>? region,
    pulumi.Output<CustomerManagedPolicyAttachmentsExclusiveTimeouts>? timeouts,
  }) :
      customerManagedPolicyReferences = pulumi.Input.asOptionalInput<List<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>>(customerManagedPolicyReferences),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      permissionSetArn = pulumi.Input.asOptionalInput<String>(permissionSetArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<CustomerManagedPolicyAttachmentsExclusiveTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedPolicyReferences': ?pulumi.Input.mapOptionalInputValue<List<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>, List<Map<String, dynamic>>>(customerManagedPolicyReferences, (value) => pulumi.Input.encodeList<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceArn': ?instanceArn,
      'permissionSetArn': ?permissionSetArn,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CustomerManagedPolicyAttachmentsExclusiveTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CustomerManagedPolicyAttachmentsExclusiveState.fromMap(Map<String, dynamic> map) {
    return CustomerManagedPolicyAttachmentsExclusiveState(
      customerManagedPolicyReferences: map['customerManagedPolicyReferences'] == null ? null : pulumi.Output.create<List<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>>(pulumi.Input.decodeList<CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference>(map['customerManagedPolicyReferences'], (value) => CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReference.fromMap((value as Map).cast<String, dynamic>()))),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      permissionSetArn: map['permissionSetArn'] == null ? null : pulumi.Output.create<String>(map['permissionSetArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CustomerManagedPolicyAttachmentsExclusiveTimeouts>(CustomerManagedPolicyAttachmentsExclusiveTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

