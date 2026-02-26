import 'package:pulumi/pulumi.dart';
import 'get_conversation_dataset_args.dart';
import 'get_conversation_dataset_result.dart';

/// Retrieves the specified conversation dataset.
Future<GetConversationDatasetResult> getConversationDataset(
  GetConversationDatasetArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getConversationDataset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConversationDatasetResult.fromMap(result);
}
