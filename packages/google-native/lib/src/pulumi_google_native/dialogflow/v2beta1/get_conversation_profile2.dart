import 'package:pulumi/pulumi.dart' hide Config;
import 'get_conversation_profile_args2.dart';
import 'get_conversation_profile_result2.dart';

/// Retrieves the specified conversation profile.
Future<GetConversationProfileResult2> getConversationProfile2(
  GetConversationProfileArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversationProfile',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationProfileResult2.fromMap(result);
}
