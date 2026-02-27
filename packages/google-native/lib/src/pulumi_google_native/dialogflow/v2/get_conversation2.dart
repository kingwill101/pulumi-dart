import 'package:pulumi/pulumi.dart' hide Config;
import 'get_conversation_args2.dart';
import 'get_conversation_result2.dart';

/// Retrieves the specific conversation.
Future<GetConversationResult2> getConversation2(
  GetConversationArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationResult2.fromMap(result);
}
