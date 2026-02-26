import 'package:pulumi/pulumi.dart';
import 'get_instance_args4.dart';
import 'get_instance_result4.dart';

/// Gets the details for an Apigee runtime instance. **Note:** Not supported for Apigee hybrid.
Future<GetInstanceResult4> getInstance4(
  GetInstanceArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult4.fromMap(result);
}
