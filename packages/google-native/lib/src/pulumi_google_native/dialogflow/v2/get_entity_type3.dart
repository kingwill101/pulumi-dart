import 'package:pulumi/pulumi.dart';
import 'get_entity_type_args3.dart';
import 'get_entity_type_result3.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeResult3> getEntityType3(
  GetEntityTypeArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult3.fromMap(result);
}
