import 'package:pulumi/pulumi.dart';
import 'get_channel_args2.dart';
import 'get_channel_result2.dart';

/// Retrieves information for the specified channel of the specified site.
Future<GetChannelResult2> getChannel2(
  GetChannelArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetChannelResult2.fromMap(result);
}
