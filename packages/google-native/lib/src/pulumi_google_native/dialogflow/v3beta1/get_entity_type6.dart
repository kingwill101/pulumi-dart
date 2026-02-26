import 'package:pulumi/pulumi.dart';
import 'get_entity_type_args6.dart';
import 'get_entity_type_result6.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeResult6> getEntityType6(
  GetEntityTypeArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult6.fromMap(result);
}
