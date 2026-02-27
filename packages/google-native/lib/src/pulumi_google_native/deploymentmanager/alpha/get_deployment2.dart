import 'package:pulumi/pulumi.dart' hide Config;
import 'get_deployment_args2.dart';
import 'get_deployment_result2.dart';

/// Gets information about a specific deployment.
Future<GetDeploymentResult2> getDeployment2(
  GetDeploymentArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getDeployment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult2.fromMap(result);
}
