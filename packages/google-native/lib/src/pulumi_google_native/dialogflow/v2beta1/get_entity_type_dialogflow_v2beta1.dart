import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_type_dialogflow_v2beta1_args.dart';
import 'get_entity_type_dialogflow_v2beta1_result.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeDialogflowV2beta1Result> getEntityTypeDialogflowV2beta1(
  GetEntityTypeDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeDialogflowV2beta1Result.fromMap(result);
}
