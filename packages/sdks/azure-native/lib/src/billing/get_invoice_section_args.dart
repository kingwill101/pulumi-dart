// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_invoice_section_args_doc}
/// Arguments for getInvoiceSection.
/// {@endtemplate}
/// {@macro pulumi_billing_get_invoice_section_args_doc}
class GetInvoiceSectionArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileName;
  /// The ID that uniquely identifies an invoice section.
  final pulumi.Input<String> invoiceSectionName;

  /// Creates a new [GetInvoiceSectionArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingProfileName] The ID that uniquely identifies a billing profile.
  /// [invoiceSectionName] The ID that uniquely identifies an invoice section.
  const GetInvoiceSectionArgs({
    required this.billingAccountName,
    required this.billingProfileName,
    required this.invoiceSectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingProfileName': billingProfileName,
      'invoiceSectionName': invoiceSectionName,
    };
  }

  factory GetInvoiceSectionArgs.fromMap(Map<String, dynamic> map) {
    return GetInvoiceSectionArgs(
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingProfileName: pulumi.Input.fromValue(map['billingProfileName'] as String),
      invoiceSectionName: pulumi.Input.fromValue(map['invoiceSectionName'] as String),
    );
  }
}
