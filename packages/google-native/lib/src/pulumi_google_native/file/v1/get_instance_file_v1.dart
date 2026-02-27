import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_file_v1_args.dart';
import 'get_instance_file_v1_result.dart';

/// Gets the details of a specific instance.
Future<GetInstanceFileV1Result> getInstanceFileV1(
  GetInstanceFileV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceFileV1Result.fromMap(result);
}
