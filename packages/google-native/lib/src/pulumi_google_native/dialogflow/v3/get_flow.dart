import 'package:pulumi/pulumi.dart' hide Config;
import 'get_flow_args.dart';
import 'get_flow_result.dart';

/// Retrieves the specified flow.
Future<GetFlowResult> getFlow(
  GetFlowArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getFlow',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFlowResult.fromMap(result);
}
