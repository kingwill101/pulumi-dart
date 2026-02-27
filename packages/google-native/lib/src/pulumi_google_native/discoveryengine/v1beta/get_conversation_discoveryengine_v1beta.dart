import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_discoveryengine_v1beta_args.dart';
import 'get_conversation_discoveryengine_v1beta_result.dart';

/// Gets a Conversation.
Future<GetConversationDiscoveryengineV1betaResult>
    getConversationDiscoveryengineV1beta(
  GetConversationDiscoveryengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1beta:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDiscoveryengineV1betaResult.fromMap(result);
}
