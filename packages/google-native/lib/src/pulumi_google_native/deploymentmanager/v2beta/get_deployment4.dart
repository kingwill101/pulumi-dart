import 'package:pulumi/pulumi.dart';
import 'get_deployment_args4.dart';
import 'get_deployment_result4.dart';

/// Gets information about a specific deployment.
Future<GetDeploymentResult4> getDeployment4(
  GetDeploymentArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getDeployment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult4.fromMap(result);
}
