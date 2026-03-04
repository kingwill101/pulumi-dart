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
      'enabledAzurePlans':
          pulumi.Input.mapInputValue<
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
      'invoiceSectionDisplayName': invoiceSectionDisplayName,
      'invoiceSectionId': invoiceSectionId,
      'invoiceSectionSystemId': invoiceSectionSystemId,
    };
  }

  factory InvoiceSectionWithCreateSubPermissionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InvoiceSectionWithCreateSubPermissionResponse(
      billingProfileDisplayName: pulumi.Input.fromValue(
        map['billingProfileDisplayName'] as String,
      ),
      billingProfileId: pulumi.Input.fromValue(
        map['billingProfileId'] as String,
      ),
      billingProfileSpendingLimit: pulumi.Input.fromValue(
        map['billingProfileSpendingLimit'] as String,
      ),
      billingProfileStatus: pulumi.Input.fromValue(
        map['billingProfileStatus'] as String,
      ),
      billingProfileStatusReasonCode: pulumi.Input.fromValue(
        map['billingProfileStatusReasonCode'] as String,
      ),
      billingProfileSystemId: pulumi.Input.fromValue(
        map['billingProfileSystemId'] as String,
      ),
      enabledAzurePlans: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AzurePlanResponse>(
          map['enabledAzurePlans']!,
          (value) =>
              AzurePlanResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      invoiceSectionDisplayName: pulumi.Input.fromValue(
        map['invoiceSectionDisplayName'] as String,
      ),
      invoiceSectionId: pulumi.Input.fromValue(
        map['invoiceSectionId'] as String,
      ),
      invoiceSectionSystemId: pulumi.Input.fromValue(
        map['invoiceSectionSystemId'] as String,
      ),
    );
  }
}
