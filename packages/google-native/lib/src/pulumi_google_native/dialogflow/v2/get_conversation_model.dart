import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_model_args.dart';
import 'get_conversation_model_result.dart';

/// Gets conversation model.
Future<GetConversationModelResult> getConversationModel(
  GetConversationModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationModelResult.fromMap(result);
}
