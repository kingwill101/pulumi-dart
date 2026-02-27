import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_participant_dialogflow_v2beta1_args.dart';
import 'get_participant_dialogflow_v2beta1_result.dart';

/// Retrieves a conversation participant.
Future<GetParticipantDialogflowV2beta1Result> getParticipantDialogflowV2beta1(
  GetParticipantDialogflowV2beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getParticipant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParticipantDialogflowV2beta1Result.fromMap(result);
}
