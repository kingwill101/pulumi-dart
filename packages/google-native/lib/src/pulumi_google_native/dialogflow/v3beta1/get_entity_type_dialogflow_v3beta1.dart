import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_type_dialogflow_v3beta1_args.dart';
import 'get_entity_type_dialogflow_v3beta1_result.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeDialogflowV3beta1Result> getEntityTypeDialogflowV3beta1(
  GetEntityTypeDialogflowV3beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeDialogflowV3beta1Result.fromMap(result);
}
