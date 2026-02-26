import 'package:pulumi/pulumi.dart';
import 'get_instance_args23.dart';
import 'get_instance_result23.dart';

/// Gets information about a particular instance.
Future<GetInstanceResult23> getInstance23(
  GetInstanceArgs23 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult23.fromMap(result);
}
