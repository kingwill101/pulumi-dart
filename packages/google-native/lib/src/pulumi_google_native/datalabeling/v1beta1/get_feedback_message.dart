import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feedback_message_args.dart';
import 'get_feedback_message_result.dart';

/// Get a FeedbackMessage object.
Future<GetFeedbackMessageResult> getFeedbackMessage(
  GetFeedbackMessageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getFeedbackMessage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeedbackMessageResult.fromMap(result);
}
