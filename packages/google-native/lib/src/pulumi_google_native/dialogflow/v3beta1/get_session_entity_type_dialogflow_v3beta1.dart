import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_session_entity_type_dialogflow_v3beta1_args.dart';
import 'get_session_entity_type_dialogflow_v3beta1_result.dart';

/// Retrieves the specified session entity type.
Future<GetSessionEntityTypeDialogflowV3beta1Result>
    getSessionEntityTypeDialogflowV3beta1(
  GetSessionEntityTypeDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSessionEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeDialogflowV3beta1Result.fromMap(result);
}
