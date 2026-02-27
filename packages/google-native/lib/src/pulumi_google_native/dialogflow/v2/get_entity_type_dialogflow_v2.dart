import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_type_dialogflow_v2_args.dart';
import 'get_entity_type_dialogflow_v2_result.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeDialogflowV2Result> getEntityTypeDialogflowV2(
  GetEntityTypeDialogflowV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeDialogflowV2Result.fromMap(result);
}
