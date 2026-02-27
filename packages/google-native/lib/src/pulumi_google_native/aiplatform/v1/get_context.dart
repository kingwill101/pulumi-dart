import 'package:pulumi/pulumi.dart' hide Config;
import 'get_context_args.dart';
import 'get_context_result.dart';

/// Retrieves a specific Context.
Future<GetContextResult> getContext(
  GetContextArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getContext',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContextResult.fromMap(result);
}
