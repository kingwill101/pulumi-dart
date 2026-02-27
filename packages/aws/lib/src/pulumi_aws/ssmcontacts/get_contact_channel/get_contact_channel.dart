import 'package:pulumi/pulumi.dart';
import 'get_contact_channel_args.dart';
import 'get_contact_channel_result.dart';

/// Data source for managing an AWS SSM Contacts Contact Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetContactChannelResult> getContactChannel(
  GetContactChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getContactChannel:getContactChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactChannelResult.fromMap(result);
}
