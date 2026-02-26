import 'package:pulumi/pulumi.dart';
import 'channel_partner_repricing_config_args.dart';
import 'google_cloud_channel_v1_repricing_config_response.dart';

/// Creates a ChannelPartnerRepricingConfig. Call this method to set modifications for a specific ChannelPartner's bill. You can only create configs if the RepricingConfig.effective_invoice_month is a future month. If needed, you can create a config for the current month, with some restrictions. When creating a config for a future month, make sure there are no existing configs for that RepricingConfig.effective_invoice_month. The following restrictions are for creating configs in the current month. * This functionality is reserved for recovering from an erroneous config, and should not be used for regular business cases. * The new config will not modify exports used with other configs. Changes to the config may be immediate, but may take up to 24 hours. * There is a limit of ten configs for any ChannelPartner or RepricingConfig.EntitlementGranularity.entitlement, for any RepricingConfig.effective_invoice_month. * The contained ChannelPartnerRepricingConfig.repricing_config value must be different from the value used in the current config for a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * INVALID_ARGUMENT: Missing or invalid required parameters in the request. Also displays if the updated config is for the current month or past months. * NOT_FOUND: The ChannelPartnerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the updated ChannelPartnerRepricingConfig resource, otherwise returns an error.
/// Auto-naming is currently not supported for this resource.
class ChannelPartnerRepricingConfig extends CustomResource {
  late final Output<String> accountId;
  late final Output<String> channelPartnerLinkId;

  /// Resource name of the ChannelPartnerRepricingConfig. Format: accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.
  late final Output<String> name;

  /// The configuration for bill modifications made by a reseller before sending it to ChannelPartner.
  late final Output<GoogleCloudChannelV1RepricingConfigResponse>
      repricingConfig;

  /// Timestamp of an update to the repricing rule. If `update_time` is after RepricingConfig.effective_invoice_month then it indicates this was set mid-month.
  late final Output<String> updateTime;

  ChannelPartnerRepricingConfig(
    String name, {
    ChannelPartnerRepricingConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudchannel/v1:ChannelPartnerRepricingConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = Output.createUnknown<String>();
    this.channelPartnerLinkId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.repricingConfig =
        Output.createUnknown<GoogleCloudChannelV1RepricingConfigResponse>();
    this.updateTime = Output.createUnknown<String>();
  }
}
