import 'package:pulumi/pulumi.dart';
import 'get_context_args2.dart';
import 'get_context_result2.dart';

/// Retrieves a specific Context.
Future<GetContextResult2> getContext2(
  GetContextArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getContext',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContextResult2.fromMap(result);
}
