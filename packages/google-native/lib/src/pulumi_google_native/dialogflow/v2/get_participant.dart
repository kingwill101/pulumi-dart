import 'package:pulumi/pulumi.dart';
import 'get_participant_args.dart';
import 'get_participant_result.dart';

/// Retrieves a conversation participant.
Future<GetParticipantResult> getParticipant(
  GetParticipantArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2:getParticipant',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParticipantResult.fromMap(result);
}
