import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_context_dialogflow_v2_args.dart';
import 'get_context_dialogflow_v2_result.dart';

/// Retrieves the specified context.
Future<GetContextDialogflowV2Result> getContextDialogflowV2(
  GetContextDialogflowV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextDialogflowV2Result.fromMap(result);
}
