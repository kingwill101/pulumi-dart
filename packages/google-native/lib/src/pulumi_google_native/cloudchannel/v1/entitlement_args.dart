// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_channel_v1_association_info.dart';
import 'google_cloud_channel_v1_commitment_settings.dart';
import 'google_cloud_channel_v1_parameter.dart';

/// The set of arguments for Entitlement.
class EntitlementArgs {
  final Input<String> accountId;

  /// Association information to other entitlements.
  final Input<GoogleCloudChannelV1AssociationInfo>? associationInfo;

  /// Optional. The billing account resource name that is used to pay for this entitlement.
  final Input<String>? billingAccount;

  /// Commitment settings for a commitment-based Offer. Required for commitment based offers.
  final Input<GoogleCloudChannelV1CommitmentSettings>? commitmentSettings;
  final Input<String> customerId;

  /// The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  final Input<String> offer;

  /// Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. For Google Workspace, the following Parameters may be accepted as input: - max_units: The maximum assignable units for a flexible offer OR - num_units: The total commitment for commitment-based offers The response may additionally include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. For Google Cloud billing subaccounts, the following Parameter may be accepted as input: - display_name: The display name of the billing subaccount.
  final Input<List<GoogleCloudChannelV1Parameter>>? parameters;

  /// Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  final Input<String>? purchaseOrderId;

  /// Optional. You can specify an optional unique request ID, and if you need to retry your request, the server will know to ignore the request if it's complete. For example, you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if it received the original operation with the same request ID. If it did, it will ignore the second request. The request ID must be a valid [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  final Input<String>? requestId;

  EntitlementArgs({
    required this.accountId,
    this.associationInfo,
    this.billingAccount,
    this.commitmentSettings,
    required this.customerId,
    required this.offer,
    this.parameters,
    this.purchaseOrderId,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    final associationInfoValue = associationInfo;
    if (associationInfoValue != null) {
      map['associationInfo'] = Input.mapOptionalInputValue<
          GoogleCloudChannelV1AssociationInfo,
          Map<String, dynamic>>(associationInfoValue, (value) => value.toMap());
    }
    final billingAccountValue = billingAccount;
    if (billingAccountValue != null) {
      map['billingAccount'] = billingAccountValue;
    }
    final commitmentSettingsValue = commitmentSettings;
    if (commitmentSettingsValue != null) {
      map['commitmentSettings'] = Input.mapOptionalInputValue<
              GoogleCloudChannelV1CommitmentSettings, Map<String, dynamic>>(
          commitmentSettingsValue, (value) => value.toMap());
    }
    map['customerId'] = customerId;
    map['offer'] = offer;
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<
              List<GoogleCloudChannelV1Parameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<GoogleCloudChannelV1Parameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final purchaseOrderIdValue = purchaseOrderId;
    if (purchaseOrderIdValue != null) {
      map['purchaseOrderId'] = purchaseOrderIdValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory EntitlementArgs.fromMap(Map<String, dynamic> map) {
    return EntitlementArgs(
      accountId: Input.asInput<String>(map['accountId']),
      associationInfo:
          Input.asOptionalInput<GoogleCloudChannelV1AssociationInfo>(
              map['associationInfo']),
      billingAccount: Input.asOptionalInput<String>(map['billingAccount']),
      commitmentSettings:
          Input.asOptionalInput<GoogleCloudChannelV1CommitmentSettings>(
              map['commitmentSettings']),
      customerId: Input.asInput<String>(map['customerId']),
      offer: Input.asInput<String>(map['offer']),
      parameters: Input.asOptionalInput<List<GoogleCloudChannelV1Parameter>>(
          map['parameters']),
      purchaseOrderId: Input.asOptionalInput<String>(map['purchaseOrderId']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
