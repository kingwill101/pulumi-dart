import 'package:pulumi/pulumi.dart';
import 'get_entity_type_args.dart';
import 'get_entity_type_result.dart';

/// Gets details of a single EntityType.
Future<GetEntityTypeResult> getEntityType(
  GetEntityTypeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult.fromMap(result);
}
