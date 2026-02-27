import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_profile_args.dart';
import 'get_conversation_profile_result.dart';

/// Retrieves the specified conversation profile.
Future<GetConversationProfileResult> getConversationProfile(
  GetConversationProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationProfileResult.fromMap(result);
}
