import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_lb_args.dart';
import 'get_listener_lb_result.dart';

/// > **Note:** `aws.alb.Listener` is known as `aws.lb.Listener`. The functionality is identical.
///
/// Provides information about a Load Balancer Listener.
///
/// This data source can prove useful when a module accepts an LB Listener as an input variable and needs to know the LB it is attached to, or other information specific to the listener in question.
Future<GetListenerLbResult> getListenerLb(
  GetListenerLbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:lb/getListener:getListener',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListenerLbResult.fromMap(result);
}
