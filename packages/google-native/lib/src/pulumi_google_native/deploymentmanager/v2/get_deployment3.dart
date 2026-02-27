import 'package:pulumi/pulumi.dart' hide Config;
import 'get_deployment_args3.dart';
import 'get_deployment_result3.dart';

/// Gets information about a specific deployment.
Future<GetDeploymentResult3> getDeployment3(
  GetDeploymentArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2:getDeployment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult3.fromMap(result);
}
