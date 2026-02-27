import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_message_healthcare_v1beta1_args.dart';
import 'get_message_healthcare_v1beta1_result.dart';

/// Gets an HL7v2 message.
Future<GetMessageHealthcareV1beta1Result> getMessageHealthcareV1beta1(
  GetMessageHealthcareV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:healthcare/v1beta1:getMessage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMessageHealthcareV1beta1Result.fromMap(result);
}
