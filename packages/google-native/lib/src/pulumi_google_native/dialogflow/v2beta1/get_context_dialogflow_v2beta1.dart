import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_context_dialogflow_v2beta1_args.dart';
import 'get_context_dialogflow_v2beta1_result.dart';

/// Retrieves the specified context.
Future<GetContextDialogflowV2beta1Result> getContextDialogflowV2beta1(
  GetContextDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getContext',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContextDialogflowV2beta1Result.fromMap(result);
}
