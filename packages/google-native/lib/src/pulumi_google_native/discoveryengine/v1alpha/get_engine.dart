import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_args.dart';
import 'get_engine_result.dart';

/// Gets a Engine.
Future<GetEngineResult> getEngine(
  GetEngineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getEngine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEngineResult.fromMap(result);
}
