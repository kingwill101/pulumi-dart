import 'package:pulumi/pulumi.dart';
import 'get_conversation_profile_args.dart';
import 'get_conversation_profile_result.dart';

/// Retrieves the specified conversation profile.
Future<GetConversationProfileResult> getConversationProfile(
  GetConversationProfileArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationProfileResult.fromMap(result);
}
