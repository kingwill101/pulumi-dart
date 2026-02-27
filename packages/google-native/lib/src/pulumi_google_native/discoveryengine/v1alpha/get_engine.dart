import 'package:pulumi/pulumi.dart' hide Config;
import 'get_engine_args.dart';
import 'get_engine_result.dart';

/// Gets a Engine.
Future<GetEngineResult> getEngine(
  GetEngineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getEngine',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEngineResult.fromMap(result);
}
