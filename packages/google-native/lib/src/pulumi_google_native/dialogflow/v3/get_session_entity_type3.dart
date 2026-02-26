import 'package:pulumi/pulumi.dart';
import 'get_session_entity_type_args3.dart';
import 'get_session_entity_type_result3.dart';

/// Retrieves the specified session entity type.
Future<GetSessionEntityTypeResult3> getSessionEntityType3(
  GetSessionEntityTypeArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getSessionEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeResult3.fromMap(result);
}
