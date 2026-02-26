import 'package:pulumi/pulumi.dart';
import 'get_hosting_channel_args.dart';
import 'get_hosting_channel_result.dart';

/// A Google Cloud Firebase Hosting Channel instance
Future<GetHostingChannelResult> getHostingChannel(
  GetHostingChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getHostingChannel:getHostingChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHostingChannelResult.fromMap(result);
}
