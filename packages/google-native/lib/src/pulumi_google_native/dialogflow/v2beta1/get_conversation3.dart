import 'package:pulumi/pulumi.dart' hide Config;
import 'get_conversation_args3.dart';
import 'get_conversation_result3.dart';

/// Retrieves the specific conversation.
Future<GetConversationResult3> getConversation3(
  GetConversationArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationResult3.fromMap(result);
}
