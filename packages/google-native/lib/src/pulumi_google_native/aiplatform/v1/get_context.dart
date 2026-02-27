import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_context_args.dart';
import 'get_context_result.dart';

/// Retrieves a specific Context.
Future<GetContextResult> getContext(
  GetContextArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextResult.fromMap(result);
}
