import 'package:pulumi/pulumi.dart';
import 'get_session_entity_type_args4.dart';
import 'get_session_entity_type_result4.dart';

/// Retrieves the specified session entity type.
Future<GetSessionEntityTypeResult4> getSessionEntityType4(
  GetSessionEntityTypeArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getSessionEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSessionEntityTypeResult4.fromMap(result);
}
