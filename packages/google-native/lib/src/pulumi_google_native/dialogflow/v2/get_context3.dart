import 'package:pulumi/pulumi.dart';
import 'get_context_args3.dart';
import 'get_context_result3.dart';

/// Retrieves the specified context.
Future<GetContextResult3> getContext3(
  GetContextArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getContext',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContextResult3.fromMap(result);
}
