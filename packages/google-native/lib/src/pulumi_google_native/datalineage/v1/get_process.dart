import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_process_args.dart';
import 'get_process_result.dart';

/// Gets the details of the specified process.
Future<GetProcessResult> getProcess(
  GetProcessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datalineage/v1:getProcess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProcessResult.fromMap(result);
}
