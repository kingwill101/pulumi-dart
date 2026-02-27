import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_dialogflow_v2beta1_args.dart';
import 'get_conversation_dialogflow_v2beta1_result.dart';

/// Retrieves the specific conversation.
Future<GetConversationDialogflowV2beta1Result> getConversationDialogflowV2beta1(
  GetConversationDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDialogflowV2beta1Result.fromMap(result);
}
