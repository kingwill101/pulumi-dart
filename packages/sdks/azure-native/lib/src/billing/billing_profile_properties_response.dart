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
  final pulumi.Input<BillingProfilePropertiesResponseBillTo>? billTo;

  /// Identifies the billing relationship represented by the billing profile. The billing relationship may be between Microsoft, the customer, and/or a third-party.
  final pulumi.Input<String> billingRelationshipType;

  /// The currency in which the charges for the billing profile are billed.
  final pulumi.Input<String> currency;

  /// The current payment term of the billing profile.
  final pulumi.Input<BillingProfilePropertiesResponseCurrentPaymentTerm>?
  currentPaymentTerm;

  /// The name of the billing profile.
  final pulumi.Input<String>? displayName;

  /// Information about the enabled azure plans.
  final pulumi.Input<List<AzurePlanResponse>>? enabledAzurePlans;

  /// Indicates whether user has read access to the billing profile.
  final pulumi.Input<bool> hasReadAccess;

  /// Identifies the billing profile that is linked to another billing profile in indirect purchase motion.
  final pulumi.Input<BillingProfilePropertiesResponseIndirectRelationshipInfo>?
  indirectRelationshipInfo;

  /// The day of the month when the invoice for the billing profile is generated.
  final pulumi.Input<int> invoiceDay;

  /// Flag controlling whether the invoices for the billing profile are sent through email.
  final pulumi.Input<bool>? invoiceEmailOptIn;

  /// The list of email addresses to receive invoices by email for the billing profile.
  final pulumi.Input<List<String>>? invoiceRecipients;

  /// The other payment terms of the billing profile.
  final pulumi.Input<List<PaymentTermResponse>> otherPaymentTerms;

  /// The default purchase order number that will appear on the invoices generated for the billing profile.
  final pulumi.Input<String>? poNumber;

  /// The provisioning state of the resource during a long-running operation.
  final pulumi.Input<String> provisioningState;

  /// The default address where the products are shipped, or the services are being used. If a ship to is not specified for a product or a subscription, then this address will be used.
  final pulumi.Input<BillingProfilePropertiesResponseShipTo>? shipTo;

  /// The address of the individual or organization that is responsible for the billing account.
  final pulumi.Input<BillingProfilePropertiesResponseSoldTo>? soldTo;

  /// The billing profile spending limit.
  final pulumi.Input<String> spendingLimit;

  /// The details of billing profile spending limit.
  final pulumi.Input<List<SpendingLimitDetailsResponse>> spendingLimitDetails;

  /// The status of the billing profile.
  final pulumi.Input<String> status;

  /// Reason for the specified billing profile status.
  final pulumi.Input<String> statusReasonCode;

  /// The system generated unique identifier for a billing profile.
  final pulumi.Input<String> systemId;

  /// Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifies the cloud environments that are associated with a billing profile. This is a system managed optional field and gets updated as the billing profile gets associated with accounts in various clouds.
  final pulumi.Input<List<String>> targetClouds;

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
  /// [tags] Dictionary of metadata associated with the resource. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain &lt; &gt; % & \ ? /
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
      'billTo':
          ?pulumi.Input.mapOptionalInputValue<
            BillingProfilePropertiesResponseBillTo,
            Map<String, dynamic>
          >(billTo, (value) => value.toMap()),
      'billingRelationshipType': billingRelationshipType,
      'currency': currency,
      'currentPaymentTerm':
          ?pulumi.Input.mapOptionalInputValue<
            BillingProfilePropertiesResponseCurrentPaymentTerm,
            Map<String, dynamic>
          >(currentPaymentTerm, (value) => value.toMap()),
      'displayName': ?displayName,
      'enabledAzurePlans':
          ?pulumi.Input.mapOptionalInputValue<
            List<AzurePlanResponse>,
            List<Map<String, dynamic>>
          >(
            enabledAzurePlans,
            (value) =>
                pulumi.Input.encodeList<
                  AzurePlanResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hasReadAccess': hasReadAccess,
      'indirectRelationshipInfo':
          ?pulumi.Input.mapOptionalInputValue<
            BillingProfilePropertiesResponseIndirectRelationshipInfo,
            Map<String, dynamic>
          >(indirectRelationshipInfo, (value) => value.toMap()),
      'invoiceDay': invoiceDay,
      'invoiceEmailOptIn': ?invoiceEmailOptIn,
      'invoiceRecipients': ?invoiceRecipients,
      'otherPaymentTerms':
          pulumi.Input.mapInputValue<
            List<PaymentTermResponse>,
            List<Map<String, dynamic>>
          >(
            otherPaymentTerms,
            (value) =>
                pulumi.Input.encodeList<
                  PaymentTermResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'poNumber': ?poNumber,
      'provisioningState': provisioningState,
      'shipTo':
          ?pulumi.Input.mapOptionalInputValue<
            BillingProfilePropertiesResponseShipTo,
            Map<String, dynamic>
          >(shipTo, (value) => value.toMap()),
      'soldTo':
          ?pulumi.Input.mapOptionalInputValue<
            BillingProfilePropertiesResponseSoldTo,
            Map<String, dynamic>
          >(soldTo, (value) => value.toMap()),
      'spendingLimit': spendingLimit,
      'spendingLimitDetails':
          pulumi.Input.mapInputValue<
            List<SpendingLimitDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            spendingLimitDetails,
            (value) =>
                pulumi.Input.encodeList<
                  SpendingLimitDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status': status,
      'statusReasonCode': statusReasonCode,
      'systemId': systemId,
      'tags': ?tags,
      'targetClouds': targetClouds,
    };
  }

  factory BillingProfilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BillingProfilePropertiesResponse(
      billTo: (() {
        final guardedValue = map['billTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BillingProfilePropertiesResponseBillTo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      billingRelationshipType: pulumi.Input.fromValue(
        map['billingRelationshipType'] as String,
      ),
      currency: pulumi.Input.fromValue(map['currency'] as String),
      currentPaymentTerm: (() {
        final guardedValue = map['currentPaymentTerm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BillingProfilePropertiesResponseCurrentPaymentTerm.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabledAzurePlans: (() {
        final guardedValue = map['enabledAzurePlans'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AzurePlanResponse>(
            guardedValue,
            (value) => AzurePlanResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      hasReadAccess: pulumi.Input.fromValue(map['hasReadAccess'] as bool),
      indirectRelationshipInfo: (() {
        final guardedValue = map['indirectRelationshipInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BillingProfilePropertiesResponseIndirectRelationshipInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      invoiceDay: pulumi.Input.fromValue(map['invoiceDay'] as int),
      invoiceEmailOptIn: (() {
        final guardedValue = map['invoiceEmailOptIn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      invoiceRecipients: (() {
        final guardedValue = map['invoiceRecipients'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      otherPaymentTerms: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PaymentTermResponse>(
          map['otherPaymentTerms']!,
          (value) => PaymentTermResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      poNumber: (() {
        final guardedValue = map['poNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      shipTo: (() {
        final guardedValue = map['shipTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BillingProfilePropertiesResponseShipTo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      soldTo: (() {
        final guardedValue = map['soldTo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BillingProfilePropertiesResponseSoldTo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      spendingLimit: pulumi.Input.fromValue(map['spendingLimit'] as String),
      spendingLimitDetails: pulumi.Input.fromValue(
        pulumi.Input.decodeList<SpendingLimitDetailsResponse>(
          map['spendingLimitDetails']!,
          (value) => SpendingLimitDetailsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      statusReasonCode: pulumi.Input.fromValue(
        map['statusReasonCode'] as String,
      ),
      systemId: pulumi.Input.fromValue(map['systemId'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetClouds: pulumi.Input.fromValue(
        (map['targetClouds'] as List).cast<String>(),
      ),
    );
  }
}
