import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_apigee_v1_args.dart';
import 'get_instance_apigee_v1_result.dart';

/// Gets the details for an Apigee runtime instance. **Note:** Not supported for Apigee hybrid.
Future<GetInstanceApigeeV1Result> getInstanceApigeeV1(
  GetInstanceApigeeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceApigeeV1Result.fromMap(result);
}
