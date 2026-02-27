import 'package:pulumi/pulumi.dart';
import 'get_listener_args2.dart';
import 'get_listener_result2.dart';

/// > **Note:** `aws.alb.Listener` is known as `aws.lb.Listener`. The functionality is identical.
///
/// Provides information about a Load Balancer Listener.
///
/// This data source can prove useful when a module accepts an LB Listener as an input variable and needs to know the LB it is attached to, or other information specific to the listener in question.
Future<GetListenerResult2> getListener2(
  GetListenerArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListener:getListener',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetListenerResult2.fromMap(result);
}
