import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_channel_connection_args.dart';
import 'get_channel_connection_result.dart';

/// Get a single ChannelConnection.
Future<GetChannelConnectionResult> getChannelConnection(
  GetChannelConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannelConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelConnectionResult.fromMap(result);
}
