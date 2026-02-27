import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_discoveryengine_v1alpha_args.dart';
import 'get_conversation_discoveryengine_v1alpha_result.dart';

/// Gets a Conversation.
Future<GetConversationDiscoveryengineV1alphaResult>
    getConversationDiscoveryengineV1alpha(
  GetConversationDiscoveryengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:discoveryengine/v1alpha:getConversation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationDiscoveryengineV1alphaResult.fromMap(result);
}
