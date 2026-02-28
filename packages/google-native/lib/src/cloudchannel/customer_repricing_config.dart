import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_repricing_config_args.dart';
import 'google_cloud_channel_v1_repricing_config_response.dart';

/// Creates a CustomerRepricingConfig. Call this method to set modifications for a specific customer's bill. You can only create configs if the RepricingConfig.effective_invoice_month is a future month. If needed, you can create a config for the current month, with some restrictions. When creating a config for a future month, make sure there are no existing configs for that RepricingConfig.effective_invoice_month. The following restrictions are for creating configs in the current month. * This functionality is reserved for recovering from an erroneous config, and should not be used for regular business cases. * The new config will not modify exports used with other configs. Changes to the config may be immediate, but may take up to 24 hours. * There is a limit of ten configs for any RepricingConfig.EntitlementGranularity.entitlement, for any RepricingConfig.effective_invoice_month. * The contained CustomerRepricingConfig.repricing_config value must be different from the value used in the current config for a RepricingConfig.EntitlementGranularity.entitlement. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * INVALID_ARGUMENT: Missing or invalid required parameters in the request. Also displays if the updated config is for the current month or past months. * NOT_FOUND: The CustomerRepricingConfig specified does not exist or is not associated with the given account. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the updated CustomerRepricingConfig resource, otherwise returns an error.
/// Auto-naming is currently not supported for this resource.
class CustomerRepricingConfig extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> customerId;

  /// Resource name of the CustomerRepricingConfig. Format: accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.
  late final pulumi.Output<String> name;

  /// The configuration for bill modifications made by a reseller before sending it to customers.
  late final pulumi.Output<GoogleCloudChannelV1RepricingConfigResponse>
      repricingConfig;

  /// Timestamp of an update to the repricing rule. If `update_time` is after RepricingConfig.effective_invoice_month then it indicates this was set mid-month.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CustomerRepricingConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerRepricingConfig]. {@macro pulumi_cloudchannel_v1_customer_repricing_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerRepricingConfig(
    String name, {
    CustomerRepricingConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudchannel/v1:CustomerRepricingConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.customerId = registerOutput<String>('customerId');
    this.name = registerOutput<String>('name');
    this.repricingConfig =
        registerOutput<GoogleCloudChannelV1RepricingConfigResponse>(
            'repricingConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
