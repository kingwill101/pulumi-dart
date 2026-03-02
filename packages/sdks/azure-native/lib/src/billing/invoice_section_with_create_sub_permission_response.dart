// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_plan_response.dart';

/// Invoice section properties with create subscription permission.
class InvoiceSectionWithCreateSubPermissionResponse {
  /// The name of the billing profile.
  final pulumi.Input<String> billingProfileDisplayName;
  /// The fully qualified ID that uniquely identifies a billing profile.
  final pulumi.Input<String> billingProfileId;
  /// The billing profile spending limit.
  final pulumi.Input<String> billingProfileSpendingLimit;
  /// The status of the billing profile.
  final pulumi.Input<String> billingProfileStatus;
  /// Reason for the specified billing profile status.
  final pulumi.Input<String> billingProfileStatusReasonCode;
  /// The system generated unique identifier for a billing profile.
  final pulumi.Input<String> billingProfileSystemId;
  /// Enabled azure plans for the associated billing profile.
  final pulumi.Input<List<AzurePlanResponse>> enabledAzurePlans;
  /// The name of the invoice section.
  final pulumi.Input<String> invoiceSectionDisplayName;
  /// The fully qualified ID that uniquely identifies an invoice section.
  final pulumi.Input<String> invoiceSectionId;
  /// The system generated unique identifier for an invoice section.
  final pulumi.Input<String> invoiceSectionSystemId;

  /// Creates a new [InvoiceSectionWithCreateSubPermissionResponse].
  /// [billingProfileDisplayName] The name of the billing profile.
  /// [billingProfileId] The fully qualified ID that uniquely identifies a billing profile.
  /// [billingProfileSpendingLimit] The billing profile spending limit.
  /// [billingProfileStatus] The status of the billing profile.
  /// [billingProfileStatusReasonCode] Reason for the specified billing profile status.
  /// [billingProfileSystemId] The system generated unique identifier for a billing profile.
  /// [enabledAzurePlans] Enabled azure plans for the associated billing profile.
  /// [invoiceSectionDisplayName] The name of the invoice section.
  /// [invoiceSectionId] The fully qualified ID that uniquely identifies an invoice section.
  /// [invoiceSectionSystemId] The system generated unique identifier for an invoice section.
  InvoiceSectionWithCreateSubPermissionResponse({
    required this.billingProfileDisplayName,
    required this.billingProfileId,
    required this.billingProfileSpendingLimit,
    required this.billingProfileStatus,
    required this.billingProfileStatusReasonCode,
    required this.billingProfileSystemId,
    required this.enabledAzurePlans,
    required this.invoiceSectionDisplayName,
    required this.invoiceSectionId,
    required this.invoiceSectionSystemId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingProfileDisplayName': billingProfileDisplayName,
      'billingProfileId': billingProfileId,
      'billingProfileSpendingLimit': billingProfileSpendingLimit,
      'billingProfileStatus': billingProfileStatus,
      'billingProfileStatusReasonCode': billingProfileStatusReasonCode,
      'billingProfileSystemId': billingProfileSystemId,
      'enabledAzurePlans': pulumi.Input.mapInputValue<List<AzurePlanResponse>, List<Map<String, dynamic>>>(enabledAzurePlans, (value) => pulumi.Input.encodeList<AzurePlanResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'invoiceSectionDisplayName': invoiceSectionDisplayName,
      'invoiceSectionId': invoiceSectionId,
      'invoiceSectionSystemId': invoiceSectionSystemId,
    };
  }

  factory InvoiceSectionWithCreateSubPermissionResponse.fromMap(Map<String, dynamic> map) {
    return InvoiceSectionWithCreateSubPermissionResponse(
      billingProfileDisplayName: (map['billingProfileDisplayName'] as String).input(),
      billingProfileId: (map['billingProfileId'] as String).input(),
      billingProfileSpendingLimit: (map['billingProfileSpendingLimit'] as String).input(),
      billingProfileStatus: (map['billingProfileStatus'] as String).input(),
      billingProfileStatusReasonCode: (map['billingProfileStatusReasonCode'] as String).input(),
      billingProfileSystemId: (map['billingProfileSystemId'] as String).input(),
      enabledAzurePlans: (pulumi.Input.decodeList<AzurePlanResponse>(map['enabledAzurePlans'], (value) => AzurePlanResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      invoiceSectionDisplayName: (map['invoiceSectionDisplayName'] as String).input(),
      invoiceSectionId: (map['invoiceSectionId'] as String).input(),
      invoiceSectionSystemId: (map['invoiceSectionSystemId'] as String).input(),
    );
  }
}

