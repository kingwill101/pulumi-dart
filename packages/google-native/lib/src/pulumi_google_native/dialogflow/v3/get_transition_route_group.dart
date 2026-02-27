import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transition_route_group_args.dart';
import 'get_transition_route_group_result.dart';

/// Retrieves the specified TransitionRouteGroup.
Future<GetTransitionRouteGroupResult> getTransitionRouteGroup(
  GetTransitionRouteGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getTransitionRouteGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitionRouteGroupResult.fromMap(result);
}
