import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_file_v1beta1_args.dart';
import 'get_instance_file_v1beta1_result.dart';

/// Gets the details of a specific instance.
Future<GetInstanceFileV1beta1Result> getInstanceFileV1beta1(
  GetInstanceFileV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceFileV1beta1Result.fromMap(result);
}
