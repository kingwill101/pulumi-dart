import 'package:pulumi/pulumi.dart' hide Config;
import 'get_conversation_args.dart';
import 'get_conversation_result.dart';

/// Gets a conversation.
Future<GetConversationResult> getConversation(
  GetConversationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getConversation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationResult.fromMap(result);
}
