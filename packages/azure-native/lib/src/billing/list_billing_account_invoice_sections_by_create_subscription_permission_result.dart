// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'invoice_section_with_create_sub_permission_response.dart';

/// Result data returned by listBillingAccountInvoiceSectionsByCreateSubscriptionPermission.
class ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult {
  /// The link (url) to the next page of results.
  final String nextLink;
  /// The list of resources.
  final List<InvoiceSectionWithCreateSubPermissionResponse> value;

  /// Creates a new [ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult].
  /// [nextLink] The link (url) to the next page of results.
  /// [value] The list of resources.
  ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<InvoiceSectionWithCreateSubPermissionResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult.fromMap(Map<String, dynamic> map) {
    return ListBillingAccountInvoiceSectionsByCreateSubscriptionPermissionResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<InvoiceSectionWithCreateSubPermissionResponse>(map['value'], (value) => InvoiceSectionWithCreateSubPermissionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

