import 'package:pulumi/pulumi.dart' hide Config;
import 'get_session_entity_type_args2.dart';
import 'get_session_entity_type_result2.dart';

/// Retrieves the specified session entity type. This method doesn't work with Google Assistant integration. Contact Dialogflow support if you need to use session entities with Google Assistant integration.
Future<GetSessionEntityTypeResult2> getSessionEntityType2(
  GetSessionEntityTypeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getSessionEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeResult2.fromMap(result);
}
