import 'package:pulumi/pulumi.dart' hide Config;
import 'get_channel_partner_link_args.dart';
import 'get_channel_partner_link_result.dart';

/// Returns the requested ChannelPartnerLink resource. You must be a distributor to call this method. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: ChannelPartnerLink resource not found because of an invalid channel partner link name. Return value: The ChannelPartnerLink resource.
Future<GetChannelPartnerLinkResult> getChannelPartnerLink(
  GetChannelPartnerLinkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getChannelPartnerLink',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetChannelPartnerLinkResult.fromMap(result);
}
