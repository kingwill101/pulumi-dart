import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_channel_args.dart';
import 'get_contact_channel_result.dart';

/// Data source for managing an AWS SSM Contacts Contact Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetContactChannelResult> getContactChannel(
  GetContactChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getContactChannel:getContactChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactChannelResult.fromMap(result);
}
