import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_persistent_resource_args.dart';
import 'get_persistent_resource_result.dart';

/// Gets a PersistentResource.
Future<GetPersistentResourceResult> getPersistentResource(
  GetPersistentResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getPersistentResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPersistentResourceResult.fromMap(result);
}
