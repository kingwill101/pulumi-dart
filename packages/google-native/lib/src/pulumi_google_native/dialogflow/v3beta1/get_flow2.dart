import 'package:pulumi/pulumi.dart' hide Config;
import 'get_flow_args2.dart';
import 'get_flow_result2.dart';

/// Retrieves the specified flow.
Future<GetFlowResult2> getFlow2(
  GetFlowArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3beta1:getFlow',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFlowResult2.fromMap(result);
}
