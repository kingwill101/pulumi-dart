import 'package:pulumi/pulumi.dart' hide Config;
import 'get_waiter_args.dart';
import 'get_waiter_result.dart';

/// Gets information about a single waiter.
Future<GetWaiterResult> getWaiter(
  GetWaiterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getWaiter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWaiterResult.fromMap(result);
}
