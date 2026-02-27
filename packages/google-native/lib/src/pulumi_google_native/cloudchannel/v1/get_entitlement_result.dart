// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_channel_v1_association_info_response.dart';
import 'google_cloud_channel_v1_commitment_settings_response.dart';
import 'google_cloud_channel_v1_parameter_response.dart';
import 'google_cloud_channel_v1_provisioned_service_response.dart';
import 'google_cloud_channel_v1_trial_settings_response.dart';

/// Result data returned by getEntitlement.
class GetEntitlementResult {
  /// Association information to other entitlements.
  final GoogleCloudChannelV1AssociationInfoResponse associationInfo;

  /// Optional. The billing account resource name that is used to pay for this entitlement.
  final String billingAccount;

  /// Commitment settings for a commitment-based Offer. Required for commitment based offers.
  final GoogleCloudChannelV1CommitmentSettingsResponse commitmentSettings;

  /// The time at which the entitlement is created.
  final String createTime;

  /// Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.
  final String name;

  /// The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  final String offer;

  /// Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. For Google Workspace, the following Parameters may be accepted as input: - max_units: The maximum assignable units for a flexible offer OR - num_units: The total commitment for commitment-based offers The response may additionally include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. For Google Cloud billing subaccounts, the following Parameter may be accepted as input: - display_name: The display name of the billing subaccount.
  final List<GoogleCloudChannelV1ParameterResponse> parameters;

  /// Service provisioning details for the entitlement.
  final GoogleCloudChannelV1ProvisionedServiceResponse provisionedService;

  /// Current provisioning state of the entitlement.
  final String provisioningState;

  /// Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  final String purchaseOrderId;

  /// Enumerable of all current suspension reasons for an entitlement.
  final List<String> suspensionReasons;

  /// Settings for trial offers.
  final GoogleCloudChannelV1TrialSettingsResponse trialSettings;

  /// The time at which the entitlement is updated.
  final String updateTime;

  GetEntitlementResult({
    required this.associationInfo,
    required this.billingAccount,
    required this.commitmentSettings,
    required this.createTime,
    required this.name,
    required this.offer,
    required this.parameters,
    required this.provisionedService,
    required this.provisioningState,
    required this.purchaseOrderId,
    required this.suspensionReasons,
    required this.trialSettings,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associationInfo'] = associationInfo.toMap();
    map['billingAccount'] = billingAccount;
    map['commitmentSettings'] = commitmentSettings.toMap();
    map['createTime'] = createTime;
    map['name'] = name;
    map['offer'] = offer;
    map['parameters'] = pulumi.Input.encodeList<
        GoogleCloudChannelV1ParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['provisionedService'] = provisionedService.toMap();
    map['provisioningState'] = provisioningState;
    map['purchaseOrderId'] = purchaseOrderId;
    map['suspensionReasons'] = suspensionReasons;
    map['trialSettings'] = trialSettings.toMap();
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetEntitlementResult.fromMap(Map<String, dynamic> map) {
    return GetEntitlementResult(
      associationInfo: GoogleCloudChannelV1AssociationInfoResponse.fromMap(
          (map['associationInfo'] as Map).cast<String, dynamic>()),
      billingAccount: map['billingAccount'] as String,
      commitmentSettings:
          GoogleCloudChannelV1CommitmentSettingsResponse.fromMap(
              (map['commitmentSettings'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      name: map['name'] as String,
      offer: map['offer'] as String,
      parameters:
          pulumi.Input.decodeList<GoogleCloudChannelV1ParameterResponse>(
              map['parameters'],
              (value) => GoogleCloudChannelV1ParameterResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      provisionedService:
          GoogleCloudChannelV1ProvisionedServiceResponse.fromMap(
              (map['provisionedService'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      purchaseOrderId: map['purchaseOrderId'] as String,
      suspensionReasons: (map['suspensionReasons'] as List).cast<String>(),
      trialSettings: GoogleCloudChannelV1TrialSettingsResponse.fromMap(
          (map['trialSettings'] as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}
