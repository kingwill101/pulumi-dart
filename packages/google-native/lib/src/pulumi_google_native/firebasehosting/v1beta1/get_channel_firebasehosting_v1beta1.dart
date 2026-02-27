import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_channel_firebasehosting_v1beta1_args.dart';
import 'get_channel_firebasehosting_v1beta1_result.dart';

/// Retrieves information for the specified channel of the specified site.
Future<GetChannelFirebasehostingV1beta1Result> getChannelFirebasehostingV1beta1(
  GetChannelFirebasehostingV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebasehosting/v1beta1:getChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelFirebasehostingV1beta1Result.fromMap(result);
}
