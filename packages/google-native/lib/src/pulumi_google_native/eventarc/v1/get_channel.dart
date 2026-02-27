import 'package:pulumi/pulumi.dart' hide Config;
import 'get_channel_args.dart';
import 'get_channel_result.dart';

/// Get a single Channel.
Future<GetChannelResult> getChannel(
  GetChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:eventarc/v1:getChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetChannelResult.fromMap(result);
}
