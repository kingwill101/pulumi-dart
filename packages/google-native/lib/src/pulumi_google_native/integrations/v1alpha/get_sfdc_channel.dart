import 'package:pulumi/pulumi.dart' hide Config;
import 'get_sfdc_channel_args.dart';
import 'get_sfdc_channel_result.dart';

/// Gets an sfdc channel. If the channel doesn't exist, Code.NOT_FOUND exception will be thrown.
Future<GetSfdcChannelResult> getSfdcChannel(
  GetSfdcChannelArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getSfdcChannel',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSfdcChannelResult.fromMap(result);
}
