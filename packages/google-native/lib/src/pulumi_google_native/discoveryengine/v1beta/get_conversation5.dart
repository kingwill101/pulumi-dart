import 'package:pulumi/pulumi.dart' hide Config;
import 'get_conversation_args5.dart';
import 'get_conversation_result5.dart';

/// Gets a Conversation.
Future<GetConversationResult5> getConversation5(
  GetConversationArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getConversation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationResult5.fromMap(result);
}
