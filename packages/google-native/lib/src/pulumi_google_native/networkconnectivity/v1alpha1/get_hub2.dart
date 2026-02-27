import 'package:pulumi/pulumi.dart' hide Config;
import 'get_hub_args2.dart';
import 'get_hub_result2.dart';

/// Gets details about a Network Connectivity Center hub.
Future<GetHubResult2> getHub2(
  GetHubArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkconnectivity/v1alpha1:getHub',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHubResult2.fromMap(result);
}
