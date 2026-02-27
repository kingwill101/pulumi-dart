import 'package:pulumi/pulumi.dart' hide Config;
import 'get_participant_args2.dart';
import 'get_participant_result2.dart';

/// Retrieves a conversation participant.
Future<GetParticipantResult2> getParticipant2(
  GetParticipantArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dialogflow/v2beta1:getParticipant',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParticipantResult2.fromMap(result);
}
