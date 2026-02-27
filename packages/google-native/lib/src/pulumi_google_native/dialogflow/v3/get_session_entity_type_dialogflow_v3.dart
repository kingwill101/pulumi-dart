import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_session_entity_type_dialogflow_v3_args.dart';
import 'get_session_entity_type_dialogflow_v3_result.dart';

/// Retrieves the specified session entity type.
Future<GetSessionEntityTypeDialogflowV3Result> getSessionEntityTypeDialogflowV3(
  GetSessionEntityTypeDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getSessionEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeDialogflowV3Result.fromMap(result);
}
