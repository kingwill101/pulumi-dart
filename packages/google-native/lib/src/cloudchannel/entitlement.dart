import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_args.dart';
import 'google_cloud_channel_v1_association_info_response.dart';
import 'google_cloud_channel_v1_commitment_settings_response.dart';
import 'google_cloud_channel_v1_parameter_response.dart';
import 'google_cloud_channel_v1_provisioned_service_response.dart';
import 'google_cloud_channel_v1_trial_settings_response.dart';

/// Creates an entitlement for a customer. Possible error codes: * PERMISSION_DENIED: * The customer doesn't belong to the reseller. * The reseller is not authorized to transact on this Product. See https://support.google.com/channelservices/answer/9759265 * INVALID_ARGUMENT: * Required request parameters are missing or invalid. * There is already a customer entitlement for a SKU from the same product family. * INVALID_VALUE: Make sure the OfferId is valid. If it is, contact Google Channel support for further troubleshooting. * NOT_FOUND: The customer or offer resource was not found. * ALREADY_EXISTS: * The SKU was already purchased for the customer. * The customer's primary email already exists. Retry after changing the customer's primary contact email. * CONDITION_NOT_MET or FAILED_PRECONDITION: * The domain required for purchasing a SKU has not been verified. * A pre-requisite SKU required to purchase an Add-On SKU is missing. For example, Google Workspace Business Starter is required to purchase Vault or Drive. * (Developer accounts only) Reseller and resold domain must meet the following naming requirements: * Domain names must start with goog-test. * Domain names must include the reseller domain. * INTERNAL: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a technical issue in the backend. Contact Cloud Channel support. Return value: The ID of a long-running operation. To get the results of the operation, call the GetOperation method of CloudChannelOperationsService. The Operation metadata will contain an instance of OperationMetadata.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Entitlement extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;

  /// Association information to other entitlements.
  late final pulumi.Output<GoogleCloudChannelV1AssociationInfoResponse>
      associationInfo;

  /// Optional. The billing account resource name that is used to pay for this entitlement.
  late final pulumi.Output<String> billingAccount;

  /// Commitment settings for a commitment-based Offer. Required for commitment based offers.
  late final pulumi.Output<GoogleCloudChannelV1CommitmentSettingsResponse>
      commitmentSettings;

  /// The time at which the entitlement is created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> customerId;

  /// Resource name of an entitlement in the form: accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.
  late final pulumi.Output<String> name;

  /// The offer resource name for which the entitlement is to be created. Takes the form: accounts/{account_id}/offers/{offer_id}.
  late final pulumi.Output<String> offer;

  /// Extended entitlement parameters. When creating an entitlement, valid parameter names and values are defined in the Offer.parameter_definitions. For Google Workspace, the following Parameters may be accepted as input: - max_units: The maximum assignable units for a flexible offer OR - num_units: The total commitment for commitment-based offers The response may additionally include the following output-only Parameters: - assigned_units: The number of licenses assigned to users. For Google Cloud billing subaccounts, the following Parameter may be accepted as input: - display_name: The display name of the billing subaccount.
  late final pulumi.Output<List<GoogleCloudChannelV1ParameterResponse>>
      parameters;

  /// Service provisioning details for the entitlement.
  late final pulumi.Output<GoogleCloudChannelV1ProvisionedServiceResponse>
      provisionedService;

  /// Current provisioning state of the entitlement.
  late final pulumi.Output<String> provisioningState;

  /// Optional. This purchase order (PO) information is for resellers to use for their company tracking usage. If a purchaseOrderId value is given, it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters. This is only supported for Google Workspace entitlements.
  late final pulumi.Output<String> purchaseOrderId;

  /// Enumerable of all current suspension reasons for an entitlement.
  late final pulumi.Output<List<String>> suspensionReasons;

  /// Settings for trial offers.
  late final pulumi.Output<GoogleCloudChannelV1TrialSettingsResponse>
      trialSettings;

  /// The time at which the entitlement is updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Entitlement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Entitlement]. {@macro pulumi_cloudchannel_v1_entitlement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Entitlement(
    String name, {
    EntitlementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudchannel/v1:Entitlement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.associationInfo =
        registerOutput<GoogleCloudChannelV1AssociationInfoResponse>(
            'associationInfo');
    this.billingAccount = registerOutput<String>('billingAccount');
    this.commitmentSettings =
        registerOutput<GoogleCloudChannelV1CommitmentSettingsResponse>(
            'commitmentSettings');
    this.createTime = registerOutput<String>('createTime');
    this.customerId = registerOutput<String>('customerId');
    this.name = registerOutput<String>('name');
    this.offer = registerOutput<String>('offer');
    this.parameters =
        registerOutput<List<GoogleCloudChannelV1ParameterResponse>>(
            'parameters');
    this.provisionedService =
        registerOutput<GoogleCloudChannelV1ProvisionedServiceResponse>(
            'provisionedService');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.purchaseOrderId = registerOutput<String>('purchaseOrderId');
    this.suspensionReasons = registerOutput<List<String>>('suspensionReasons');
    this.trialSettings =
        registerOutput<GoogleCloudChannelV1TrialSettingsResponse>(
            'trialSettings');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
