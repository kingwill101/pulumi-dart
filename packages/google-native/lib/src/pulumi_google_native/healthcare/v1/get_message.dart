import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_message_args.dart';
import 'get_message_result.dart';

/// Gets an HL7v2 message.
Future<GetMessageResult> getMessage(
  GetMessageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1:getMessage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMessageResult.fromMap(result);
}
