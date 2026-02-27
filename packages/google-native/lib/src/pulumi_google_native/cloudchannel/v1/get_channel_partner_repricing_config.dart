import 'package:pulumi/pulumi.dart' hide Config;
import 'get_channel_partner_repricing_config_args.dart';
import 'get_channel_partner_repricing_config_result.dart';

/// Gets information about how a Distributor modifies their bill before sending it to a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The ChannelPartnerRepricingConfig was not found. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the ChannelPartnerRepricingConfig resource, otherwise returns an error.
Future<GetChannelPartnerRepricingConfigResult> getChannelPartnerRepricingConfig(
  GetChannelPartnerRepricingConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getChannelPartnerRepricingConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetChannelPartnerRepricingConfigResult.fromMap(result);
}
