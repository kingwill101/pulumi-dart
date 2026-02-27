import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waiter_args.dart';
import 'get_waiter_result.dart';

/// Gets information about a single waiter.
Future<GetWaiterResult> getWaiter(
  GetWaiterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getWaiter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWaiterResult.fromMap(result);
}
