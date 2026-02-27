import 'package:pulumi/pulumi.dart' hide Config;
import 'get_entity_type_args4.dart';
import 'get_entity_type_result4.dart';

/// Retrieves the specified entity type.
Future<GetEntityTypeResult4> getEntityType4(
  GetEntityTypeArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult4.fromMap(result);
}
