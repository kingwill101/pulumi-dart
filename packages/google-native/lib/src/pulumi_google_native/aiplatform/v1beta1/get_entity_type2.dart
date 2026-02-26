import 'package:pulumi/pulumi.dart';
import 'get_entity_type_args2.dart';
import 'get_entity_type_result2.dart';

/// Gets details of a single EntityType.
Future<GetEntityTypeResult2> getEntityType2(
  GetEntityTypeArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getEntityType',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityTypeResult2.fromMap(result);
}
