import 'package:pulumi/pulumi.dart';
import 'get_entity_args2.dart';
import 'get_entity_result2.dart';

/// Get a metadata entity.
Future<GetEntityResult2> getEntity2(
  GetEntityArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getEntity',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntityResult2.fromMap(result);
}
