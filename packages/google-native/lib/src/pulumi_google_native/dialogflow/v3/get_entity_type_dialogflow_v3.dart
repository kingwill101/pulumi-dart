import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_type_dialogflow_v3_args.dart';
import 'get_entity_type_dialogflow_v3_result.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeDialogflowV3Result> getEntityTypeDialogflowV3(
  GetEntityTypeDialogflowV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeDialogflowV3Result.fromMap(result);
}
