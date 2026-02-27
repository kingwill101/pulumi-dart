import 'package:pulumi/pulumi.dart' hide Config;
import 'get_message_args2.dart';
import 'get_message_result2.dart';

/// Gets an HL7v2 message.
Future<GetMessageResult2> getMessage2(
  GetMessageArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getMessage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMessageResult2.fromMap(result);
}
