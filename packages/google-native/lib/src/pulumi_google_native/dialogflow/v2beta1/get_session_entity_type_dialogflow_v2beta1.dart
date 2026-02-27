import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_session_entity_type_dialogflow_v2beta1_args.dart';
import 'get_session_entity_type_dialogflow_v2beta1_result.dart';

/// Retrieves the specified session entity type. This method doesn't work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration.
Future<GetSessionEntityTypeDialogflowV2beta1Result>
    getSessionEntityTypeDialogflowV2beta1(
  GetSessionEntityTypeDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getSessionEntityType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeDialogflowV2beta1Result.fromMap(result);
}
