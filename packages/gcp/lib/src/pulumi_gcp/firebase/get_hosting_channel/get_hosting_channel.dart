import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hosting_channel_args.dart';
import 'get_hosting_channel_result.dart';

/// A Google Cloud Firebase Hosting Channel instance
Future<GetHostingChannelResult> getHostingChannel(
  GetHostingChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getHostingChannel:getHostingChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostingChannelResult.fromMap(result);
}
