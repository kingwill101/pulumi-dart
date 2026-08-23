// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_role_assignment_properties.dart';

/// {@template pulumi_billing_billing_role_assignment_by_billing_account_args_doc}
/// The set of arguments for BillingRoleAssignmentByBillingAccount.
/// {@endtemplate}
/// {@macro pulumi_billing_billing_role_assignment_by_billing_account_args_doc}
class BillingRoleAssignmentByBillingAccountArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a role assignment.
  final pulumi.Input<String>? billingRoleAssignmentName;
  /// The properties of the billing role assignment.
  final pulumi.Input<BillingRoleAssignmentProperties>? properties;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BillingRoleAssignmentByBillingAccountArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingRoleAssignmentName] The ID that uniquely identifies a role assignment.
  /// [properties] The properties of the billing role assignment.
  /// [tags] Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  const BillingRoleAssignmentByBillingAccountArgs({
    required this.billingAccountName,
    this.billingRoleAssignmentName,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingRoleAssignmentName': ?billingRoleAssignmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BillingRoleAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory BillingRoleAssignmentByBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return BillingRoleAssignmentByBillingAccountArgs(
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingRoleAssignmentName: (() { final guardedValue = map['billingRoleAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingRoleAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
