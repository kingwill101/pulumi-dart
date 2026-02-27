import 'package:pulumi/pulumi.dart' hide Config;
import 'get_entity_type_args5.dart';
import 'get_entity_type_result5.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeResult5> getEntityType5(
  GetEntityTypeArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult5.fromMap(result);
}
