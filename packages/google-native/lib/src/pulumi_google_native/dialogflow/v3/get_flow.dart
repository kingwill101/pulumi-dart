import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_flow_args.dart';
import 'get_flow_result.dart';

/// Retrieves the specified flow.
Future<GetFlowResult> getFlow(
  GetFlowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v3:getFlow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowResult.fromMap(result);
}
