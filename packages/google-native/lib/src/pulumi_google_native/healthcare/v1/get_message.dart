import 'package:pulumi/pulumi.dart' hide Config;
import 'get_message_args.dart';
import 'get_message_result.dart';

/// Gets an HL7v2 message.
Future<GetMessageResult> getMessage(
  GetMessageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getMessage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMessageResult.fromMap(result);
}
