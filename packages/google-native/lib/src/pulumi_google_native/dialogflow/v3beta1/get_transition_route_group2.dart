import 'package:pulumi/pulumi.dart';
import 'get_transition_route_group_args2.dart';
import 'get_transition_route_group_result2.dart';

/// Retrieves the specified TransitionRouteGroup.
Future<GetTransitionRouteGroupResult2> getTransitionRouteGroup2(
  GetTransitionRouteGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTransitionRouteGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTransitionRouteGroupResult2.fromMap(result);
}
