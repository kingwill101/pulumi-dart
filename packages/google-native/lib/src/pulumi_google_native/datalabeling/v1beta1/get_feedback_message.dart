import 'package:pulumi/pulumi.dart';
import 'get_feedback_message_args.dart';
import 'get_feedback_message_result.dart';

/// Get a FeedbackMessage object.
Future<GetFeedbackMessageResult> getFeedbackMessage(
  GetFeedbackMessageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalabeling/v1beta1:getFeedbackMessage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeedbackMessageResult.fromMap(result);
}
