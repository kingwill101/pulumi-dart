import 'package:pulumi/pulumi.dart';
import 'get_instance_args13.dart';
import 'get_instance_result13.dart';

/// Gets the details of a specific instance.
Future<GetInstanceResult13> getInstance13(
  GetInstanceArgs13 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult13.fromMap(result);
}
