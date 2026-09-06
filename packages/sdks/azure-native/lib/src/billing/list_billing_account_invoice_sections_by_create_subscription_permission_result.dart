// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoice_section_with_create_sub_permission_response.dart';

/// Result data returned by listBillingAccountInvoiceSectionsByCreateSubscriptionPermission.
class ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The InvoiceSectionWithCreateSubPermission items on this page
  final List<InvoiceSectionWithCreateSubPermissionResponse>? value;

  /// Creates a new [ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult].
  /// [nextLink] The link to the next page of items
  /// [value] The InvoiceSectionWithCreateSubPermission items on this page
  const ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<InvoiceSectionWithCreateSubPermissionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult.fromMap(Map<String, dynamic> map) {
    return ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InvoiceSectionWithCreateSubPermissionResponse>(guardedValue, (value) => InvoiceSectionWithCreateSubPermissionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
