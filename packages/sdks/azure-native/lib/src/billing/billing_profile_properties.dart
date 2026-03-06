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
  final pulumi.Input<BillingProfilePropertiesBillTo>? billTo;
  /// The current payment term of the billing profile.
  final pulumi.Input<BillingProfilePropertiesCurrentPaymentTerm>? currentPaymentTerm;
  /// The name of the billing profile.
  final pulumi.Input<String>? displayName;
  /// Information about the enabled azure plans.
  final pulumi.Input<List<AzurePlan>>? enabledAzurePlans;
  /// Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
  final pulumi.Input<BillingProfilePropertiesIndirectRelationshipInfo>? indirectRelationshipInfo;
  /// Flag controlling whether the invoices for the billing profile are sent through email.
  final pulumi.Input<bool>? invoiceEmailOptIn;
  /// The list of email addresses to receive invoices by email for the billing profile.
  final pulumi.Input<List<String>>? invoiceRecipients;
  /// The default purchase order number that will appear on the invoices generated for the billing profile.
  final pulumi.Input<String>? poNumber;
  /// The default address where the products are shipped, or the services are being used. If a ship to is not specified for a product or a subscription, then this address will be used.
  final pulumi.Input<BillingProfilePropertiesShipTo>? shipTo;
  /// The address of the individual or organization that is responsible for the billing account.
  final pulumi.Input<BillingProfilePropertiesSoldTo>? soldTo;
  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

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
  /// [tags] Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  const BillingProfileProperties({
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
      'billTo': ?pulumi.Input.mapOptionalInputValue<BillingProfilePropertiesBillTo, Map<String, dynamic>>(billTo, (value) => value.toMap()),
      'currentPaymentTerm': ?pulumi.Input.mapOptionalInputValue<BillingProfilePropertiesCurrentPaymentTerm, Map<String, dynamic>>(currentPaymentTerm, (value) => value.toMap()),
      'displayName': ?displayName,
      'enabledAzurePlans': ?pulumi.Input.mapOptionalInputValue<List<AzurePlan>, List<Map<String, dynamic>>>(enabledAzurePlans, (value) => pulumi.Input.encodeList<AzurePlan, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indirectRelationshipInfo': ?pulumi.Input.mapOptionalInputValue<BillingProfilePropertiesIndirectRelationshipInfo, Map<String, dynamic>>(indirectRelationshipInfo, (value) => value.toMap()),
      'invoiceEmailOptIn': ?invoiceEmailOptIn,
      'invoiceRecipients': ?invoiceRecipients,
      'poNumber': ?poNumber,
      'shipTo': ?pulumi.Input.mapOptionalInputValue<BillingProfilePropertiesShipTo, Map<String, dynamic>>(shipTo, (value) => value.toMap()),
      'soldTo': ?pulumi.Input.mapOptionalInputValue<BillingProfilePropertiesSoldTo, Map<String, dynamic>>(soldTo, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory BillingProfileProperties.fromMap(Map<String, dynamic> map) {
    return BillingProfileProperties(
      billTo: (() { final guardedValue = map['billTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingProfilePropertiesBillTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      currentPaymentTerm: (() { final guardedValue = map['currentPaymentTerm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingProfilePropertiesCurrentPaymentTerm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabledAzurePlans: (() { final guardedValue = map['enabledAzurePlans']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzurePlan>(guardedValue, (value) => AzurePlan.fromMap((value as Map).cast<String, dynamic>()))); })(),
      indirectRelationshipInfo: (() { final guardedValue = map['indirectRelationshipInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingProfilePropertiesIndirectRelationshipInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      invoiceEmailOptIn: (() { final guardedValue = map['invoiceEmailOptIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      invoiceRecipients: (() { final guardedValue = map['invoiceRecipients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      poNumber: (() { final guardedValue = map['poNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shipTo: (() { final guardedValue = map['shipTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingProfilePropertiesShipTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      soldTo: (() { final guardedValue = map['soldTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BillingProfilePropertiesSoldTo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

