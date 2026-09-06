// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_list_billing_account_invoice_sections_by_create_subscription_permission_args_doc}
/// Arguments for listBillingAccountInvoiceSectionsByCreateSubscriptionPermission.
/// {@endtemplate}
/// {@macro pulumi_billing_list_billing_account_invoice_sections_by_create_subscription_permission_args_doc}
class ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The filter query option allows clients to filter a collection of resources that are addressed by a request URL.
  final pulumi.Input<String?>? filter;

  /// Creates a new [ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [filter] The filter query option allows clients to filter a collection of resources that are addressed by a request URL.
  const ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionArgs({
    required this.billingAccountName,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'filter': ?filter,
    };
  }

  factory ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionArgs.fromMap(Map<String, dynamic> map) {
    return ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionArgs(
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
