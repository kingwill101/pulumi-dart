// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_boundary_attachment_permissions_boundary_customer_managed_policy_reference.dart';

class PermissionsBoundaryAttachmentPermissionsBoundary {
  /// Specifies the name and path of a customer managed policy. See below.
  final pulumi.Input<PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference?>? customerManagedPolicyReference;
  /// AWS-managed IAM policy ARN to use as the permissions boundary.
  final pulumi.Input<String?>? managedPolicyArn;

  /// Creates a new [PermissionsBoundaryAttachmentPermissionsBoundary].
  /// [customerManagedPolicyReference] Specifies the name and path of a customer managed policy. See below.
  /// [managedPolicyArn] AWS-managed IAM policy ARN to use as the permissions boundary.
  const PermissionsBoundaryAttachmentPermissionsBoundary({
    this.customerManagedPolicyReference,
    this.managedPolicyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerManagedPolicyReference': ?pulumi.Input.mapOptionalInputValue<PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference, Map<String, dynamic>>(customerManagedPolicyReference, (value) => value.toMap()),
      'managedPolicyArn': ?managedPolicyArn,
    };
  }

  factory PermissionsBoundaryAttachmentPermissionsBoundary.fromMap(Map<String, dynamic> map) {
    return PermissionsBoundaryAttachmentPermissionsBoundary(
      customerManagedPolicyReference: (() { final guardedValue = map['customerManagedPolicyReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedPolicyArn: (() { final guardedValue = map['managedPolicyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
