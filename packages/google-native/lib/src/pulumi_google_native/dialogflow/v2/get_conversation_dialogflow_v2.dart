import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_dialogflow_v2_args.dart';
import 'get_conversation_dialogflow_v2_result.dart';

/// Retrieves the specific conversation.
Future<GetConversationDialogflowV2Result> getConversationDialogflowV2(
  GetConversationDialogflowV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDialogflowV2Result.fromMap(result);
}
