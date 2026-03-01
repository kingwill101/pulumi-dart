// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_plan_response.dart';
import 'billing_profile_properties_response_bill_to.dart';
import 'billing_profile_properties_response_current_payment_term.dart';
import 'billing_profile_properties_response_indirect_relationship_info.dart';
import 'billing_profile_properties_response_ship_to.dart';
import 'billing_profile_properties_response_sold_to.dart';
import 'payment_term_response.dart';
import 'spending_limit_details_response.dart';

/// A billing profile.
class BillingProfilePropertiesResponse {
  /// Billing address.
  final BillingProfilePropertiesResponseBillTo? billTo;
  /// Identifies the billing relationship represented by the billing profile. The billing relationship may be between Microsoft, the customer, and/or a third-party.
  final String billingRelationshipType;
  /// The currency in which the charges for the billing profile are billed.
  final String currency;
  /// The current payment term of the billing profile.
  final BillingProfilePropertiesResponseCurrentPaymentTerm? currentPaymentTerm;
  /// The name of the billing profile.
  final String? displayName;
  /// Information about the enabled azure plans.
  final List<AzurePlanResponse>? enabledAzurePlans;
  /// Indicates whether user has read access to the billing profile.
  final bool hasReadAccess;
  /// Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
  final BillingProfilePropertiesResponseIndirectRelationshipInfo? indirectRelationshipInfo;
  /// The day of the month when the invoice for the billing profile is generated.
  final int invoiceDay;
  /// Flag controlling whether the invoices for the billing profile are sent through email.
  final bool? invoiceEmailOptIn;
  /// The list of email addresses to receive invoices by email for the billing profile.
  final List<String>? invoiceRecipients;
  /// The other payment terms of the billing profile.
  final List<PaymentTermResponse> otherPaymentTerms;
  /// The default purchase order number that will appear on the invoices generated for the billing profile.
  final String? poNumber;
  /// The provisioning state of the resource during a long-running operation.
  final String provisioningState;
  /// The default address where the products are shipped, or the services are being used. If a ship to is not specified for a product or a subscription, then this address will be used.
  final BillingProfilePropertiesResponseShipTo? shipTo;
  /// The address of the individual or organization that is responsible for the billing account.
  final BillingProfilePropertiesResponseSoldTo? soldTo;
  /// The billing profile spending limit.
  final String spendingLimit;
  /// The details of billing profile spending limit.
  final List<SpendingLimitDetailsResponse> spendingLimitDetails;
  /// The status of the billing profile.
  final String status;
  /// Reason for the specified billing profile status.
  final String statusReasonCode;
  /// The system generated unique identifier for a billing profile.
  final String systemId;
  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final Map<String, String>? tags;
  /// Identifies the cloud environments that are associated with a billing profile. This is a system managed optional field and gets updated as the billing profile gets associated with accounts in various clouds.
  final List<String> targetClouds;

  /// Creates a new [BillingProfilePropertiesResponse].
  /// [billTo] Billing address.
  /// [billingRelationshipType] Identifies the billing relationship represented by the billing profile. The billing relationship may be between Microsoft, the customer, and/or a third-party.
  /// [currency] The currency in which the charges for the billing profile are billed.
  /// [currentPaymentTerm] The current payment term of the billing profile.
  /// [displayName] The name of the billing profile.
  /// [enabledAzurePlans] Information about the enabled azure plans.
  /// [hasReadAccess] Indicates whether user has read access to the billing profile.
  /// [indirectRelationshipInfo] Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
  /// [invoiceDay] The day of the month when the invoice for the billing profile is generated.
  /// [invoiceEmailOptIn] Flag controlling whether the invoices for the billing profile are sent through email.
  /// [invoiceRecipients] The list of email addresses to receive invoices by email for the billing profile.
  /// [otherPaymentTerms] The other payment terms of the billing profile.
  /// [poNumber] The default purchase order number that will appear on the invoices generated for the billing profile.
  /// [provisioningState] The provisioning state of the resource during a long-running operation.
  /// [shipTo] The default address where the products are shipped, or the services are being used. If a ship to is not specified for a product or a subscription, then this address will be used.
  /// [soldTo] The address of the individual or organization that is responsible for the billing account.
  /// [spendingLimit] The billing profile spending limit.
  /// [spendingLimitDetails] The details of billing profile spending limit.
  /// [status] The status of the billing profile.
  /// [statusReasonCode] Reason for the specified billing profile status.
  /// [systemId] The system generated unique identifier for a billing profile.
  /// [tags] Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  /// [targetClouds] Identifies the cloud environments that are associated with a billing profile. This is a system managed optional field and gets updated as the billing profile gets associated with accounts in various clouds.
  BillingProfilePropertiesResponse({
    this.billTo,
    required this.billingRelationshipType,
    required this.currency,
    this.currentPaymentTerm,
    this.displayName,
    this.enabledAzurePlans,
    required this.hasReadAccess,
    this.indirectRelationshipInfo,
    required this.invoiceDay,
    this.invoiceEmailOptIn,
    this.invoiceRecipients,
    required this.otherPaymentTerms,
    this.poNumber,
    required this.provisioningState,
    this.shipTo,
    this.soldTo,
    required this.spendingLimit,
    required this.spendingLimitDetails,
    required this.status,
    required this.statusReasonCode,
    required this.systemId,
    this.tags,
    required this.targetClouds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billTo': ?billTo == null ? null : billTo!.toMap(),
      'billingRelationshipType': billingRelationshipType,
      'currency': currency,
      'currentPaymentTerm': ?currentPaymentTerm == null ? null : currentPaymentTerm!.toMap(),
      'displayName': ?displayName,
      'enabledAzurePlans': ?enabledAzurePlans == null ? null : pulumi.Input.encodeList<AzurePlanResponse, Map<String, dynamic>>(enabledAzurePlans!, (value) => value.toMap()),
      'hasReadAccess': hasReadAccess,
      'indirectRelationshipInfo': ?indirectRelationshipInfo == null ? null : indirectRelationshipInfo!.toMap(),
      'invoiceDay': invoiceDay,
      'invoiceEmailOptIn': ?invoiceEmailOptIn,
      'invoiceRecipients': ?invoiceRecipients,
      'otherPaymentTerms': pulumi.Input.encodeList<PaymentTermResponse, Map<String, dynamic>>(otherPaymentTerms, (value) => value.toMap()),
      'poNumber': ?poNumber,
      'provisioningState': provisioningState,
      'shipTo': ?shipTo == null ? null : shipTo!.toMap(),
      'soldTo': ?soldTo == null ? null : soldTo!.toMap(),
      'spendingLimit': spendingLimit,
      'spendingLimitDetails': pulumi.Input.encodeList<SpendingLimitDetailsResponse, Map<String, dynamic>>(spendingLimitDetails, (value) => value.toMap()),
      'status': status,
      'statusReasonCode': statusReasonCode,
      'systemId': systemId,
      'tags': ?tags,
      'targetClouds': targetClouds,
    };
  }

  factory BillingProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesResponse(
      billTo: map['billTo'] == null ? null : BillingProfilePropertiesResponseBillTo.fromMap((map['billTo'] as Map).cast<String, dynamic>()),
      billingRelationshipType: map['billingRelationshipType'] as String,
      currency: map['currency'] as String,
      currentPaymentTerm: map['currentPaymentTerm'] == null ? null : BillingProfilePropertiesResponseCurrentPaymentTerm.fromMap((map['currentPaymentTerm'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enabledAzurePlans: map['enabledAzurePlans'] == null ? null : pulumi.Input.decodeList<AzurePlanResponse>(map['enabledAzurePlans'], (value) => AzurePlanResponse.fromMap((value as Map).cast<String, dynamic>())),
      hasReadAccess: map['hasReadAccess'] as bool,
      indirectRelationshipInfo: map['indirectRelationshipInfo'] == null ? null : BillingProfilePropertiesResponseIndirectRelationshipInfo.fromMap((map['indirectRelationshipInfo'] as Map).cast<String, dynamic>()),
      invoiceDay: map['invoiceDay'] as int,
      invoiceEmailOptIn: map['invoiceEmailOptIn'] == null ? null : map['invoiceEmailOptIn'] as bool,
      invoiceRecipients: map['invoiceRecipients'] == null ? null : (map['invoiceRecipients'] as List).cast<String>(),
      otherPaymentTerms: pulumi.Input.decodeList<PaymentTermResponse>(map['otherPaymentTerms'], (value) => PaymentTermResponse.fromMap((value as Map).cast<String, dynamic>())),
      poNumber: map['poNumber'] == null ? null : map['poNumber'] as String,
      provisioningState: map['provisioningState'] as String,
      shipTo: map['shipTo'] == null ? null : BillingProfilePropertiesResponseShipTo.fromMap((map['shipTo'] as Map).cast<String, dynamic>()),
      soldTo: map['soldTo'] == null ? null : BillingProfilePropertiesResponseSoldTo.fromMap((map['soldTo'] as Map).cast<String, dynamic>()),
      spendingLimit: map['spendingLimit'] as String,
      spendingLimitDetails: pulumi.Input.decodeList<SpendingLimitDetailsResponse>(map['spendingLimitDetails'], (value) => SpendingLimitDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      statusReasonCode: map['statusReasonCode'] as String,
      systemId: map['systemId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetClouds: (map['targetClouds'] as List).cast<String>(),
    );
  }
}

