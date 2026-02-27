import 'package:pulumi/pulumi.dart' hide Config;
import 'get_conversation_args4.dart';
import 'get_conversation_result4.dart';

/// Gets a Conversation.
Future<GetConversationResult4> getConversation4(
  GetConversationArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getConversation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationResult4.fromMap(result);
}
