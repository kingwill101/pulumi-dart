import 'package:pulumi/pulumi.dart' hide Config;
import 'get_context_args4.dart';
import 'get_context_result4.dart';

/// Retrieves the specified context.
Future<GetContextResult4> getContext4(
  GetContextArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getContext',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContextResult4.fromMap(result);
}
