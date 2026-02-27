import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_conversation_profile_dialogflow_v2beta1_args.dart';
import 'get_conversation_profile_dialogflow_v2beta1_result.dart';

/// Retrieves the specified conversation profile.
Future<GetConversationProfileDialogflowV2beta1Result>
    getConversationProfileDialogflowV2beta1(
  GetConversationProfileDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getConversationProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConversationProfileDialogflowV2beta1Result.fromMap(result);
}
