import 'package:pulumi/pulumi.dart';
import 'get_session_entity_type_args.dart';
import 'get_session_entity_type_result.dart';

/// Retrieves the specified session entity type. This method doesn't work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration.
Future<GetSessionEntityTypeResult> getSessionEntityType(
  GetSessionEntityTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getSessionEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeResult.fromMap(result);
}
