// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_associated_tenant_args_doc}
/// Arguments for getAssociatedTenant.
/// {@endtemplate}
/// {@macro pulumi_billing_get_associated_tenant_args_doc}
class GetAssociatedTenantArgs {
  /// The ID that uniquely identifies a tenant.
  final pulumi.Input<String> associatedTenantName;

  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;

  /// Creates a new [GetAssociatedTenantArgs].
  /// [associatedTenantName] The ID that uniquely identifies a tenant.
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  GetAssociatedTenantArgs({
    required this.associatedTenantName,
    required this.billingAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedTenantName': associatedTenantName,
      'billingAccountName': billingAccountName,
    };
  }

  factory GetAssociatedTenantArgs.fromMap(Map<String, dynamic> map) {
    return GetAssociatedTenantArgs(
      associatedTenantName: pulumi.Input.fromValue(
        map['associatedTenantName'] as String,
      ),
      billingAccountName: pulumi.Input.fromValue(
        map['billingAccountName'] as String,
      ),
    );
  }
}
