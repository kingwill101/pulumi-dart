import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transition_route_group_dialogflow_v3beta1_args.dart';
import 'get_transition_route_group_dialogflow_v3beta1_result.dart';

/// Retrieves the specified TransitionRouteGroup.
Future<GetTransitionRouteGroupDialogflowV3beta1Result>
    getTransitionRouteGroupDialogflowV3beta1(
  GetTransitionRouteGroupDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getTransitionRouteGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitionRouteGroupDialogflowV3beta1Result.fromMap(result);
}
