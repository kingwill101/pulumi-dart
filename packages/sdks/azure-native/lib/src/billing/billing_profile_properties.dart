// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_plan.dart';
import 'billing_profile_properties_bill_to.dart';
import 'billing_profile_properties_current_payment_term.dart';
import 'billing_profile_properties_indirect_relationship_info.dart';
import 'billing_profile_properties_ship_to.dart';
import 'billing_profile_properties_sold_to.dart';

/// A billing profile.
class BillingProfileProperties {
  /// Billing address.
  final BillingProfilePropertiesBillTo? billTo;
  /// The current payment term of the billing profile.
  final BillingProfilePropertiesCurrentPaymentTerm? currentPaymentTerm;
  /// The name of the billing profile.
  final String? displayName;
  /// Information about the enabled azure plans.
  final List<AzurePlan>? enabledAzurePlans;
  /// Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
  final BillingProfilePropertiesIndirectRelationshipInfo? indirectRelationshipInfo;
  /// Flag controlling whether the invoices for the billing profile are sent through email.
  final bool? invoiceEmailOptIn;
  /// The list of email addresses to receive invoices by email for the billing profile.
  final List<String>? invoiceRecipients;
  /// The default purchase order number that will appear on the invoices generated for the billing profile.
  final String? poNumber;
  /// The default address where the products are shipped, or the services are being used. If a ship to is not specified for a product or a subscription, then this address will be used.
  final BillingProfilePropertiesShipTo? shipTo;
  /// The address of the individual or organization that is responsible for the billing account.
  final BillingProfilePropertiesSoldTo? soldTo;
  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final Map<String, String>? tags;

  /// Creates a new [BillingProfileProperties].
  /// [billTo] Billing address.
  /// [currentPaymentTerm] The current payment term of the billing profile.
  /// [displayName] The name of the billing profile.
  /// [enabledAzurePlans] Information about the enabled azure plans.
  /// [indirectRelationshipInfo] Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
  /// [invoiceEmailOptIn] Flag controlling whether the invoices for the billing profile are sent through email.
  /// [invoiceRecipients] The list of email addresses to receive invoices by email for the billing profile.
  /// [poNumber] The default purchase order number that will appear on the invoices generated for the billing profile.
  /// [shipTo] The default address where the products are shipped, or the services are being used. If a ship to is not specified for a product or a subscription, then this address will be used.
  /// [soldTo] The address of the individual or organization that is responsible for the billing account.
  /// [tags] Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  BillingProfileProperties({
    this.billTo,
    this.currentPaymentTerm,
    this.displayName,
    this.enabledAzurePlans,
    this.indirectRelationshipInfo,
    this.invoiceEmailOptIn,
    this.invoiceRecipients,
    this.poNumber,
    this.shipTo,
    this.soldTo,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billTo': ?billTo == null ? null : billTo!.toMap(),
      'currentPaymentTerm': ?currentPaymentTerm == null ? null : currentPaymentTerm!.toMap(),
      'displayName': ?displayName,
      'enabledAzurePlans': ?enabledAzurePlans == null ? null : pulumi.Input.encodeList<AzurePlan, Map<String, dynamic>>(enabledAzurePlans!, (value) => value.toMap()),
      'indirectRelationshipInfo': ?indirectRelationshipInfo == null ? null : indirectRelationshipInfo!.toMap(),
      'invoiceEmailOptIn': ?invoiceEmailOptIn,
      'invoiceRecipients': ?invoiceRecipients,
      'poNumber': ?poNumber,
      'shipTo': ?shipTo == null ? null : shipTo!.toMap(),
      'soldTo': ?soldTo == null ? null : soldTo!.toMap(),
      'tags': ?tags,
    };
  }

  factory BillingProfileProperties.fromMap(Map<String, dynamic> map) {
    return BillingProfileProperties(
      billTo: map['billTo'] == null ? null : BillingProfilePropertiesBillTo.fromMap((map['billTo'] as Map).cast<String, dynamic>()),
      currentPaymentTerm: map['currentPaymentTerm'] == null ? null : BillingProfilePropertiesCurrentPaymentTerm.fromMap((map['currentPaymentTerm'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enabledAzurePlans: map['enabledAzurePlans'] == null ? null : pulumi.Input.decodeList<AzurePlan>(map['enabledAzurePlans'], (value) => AzurePlan.fromMap((value as Map).cast<String, dynamic>())),
      indirectRelationshipInfo: map['indirectRelationshipInfo'] == null ? null : BillingProfilePropertiesIndirectRelationshipInfo.fromMap((map['indirectRelationshipInfo'] as Map).cast<String, dynamic>()),
      invoiceEmailOptIn: map['invoiceEmailOptIn'] == null ? null : map['invoiceEmailOptIn'] as bool,
      invoiceRecipients: map['invoiceRecipients'] == null ? null : (map['invoiceRecipients'] as List).cast<String>(),
      poNumber: map['poNumber'] == null ? null : map['poNumber'] as String,
      shipTo: map['shipTo'] == null ? null : BillingProfilePropertiesShipTo.fromMap((map['shipTo'] as Map).cast<String, dynamic>()),
      soldTo: map['soldTo'] == null ? null : BillingProfilePropertiesSoldTo.fromMap((map['soldTo'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

