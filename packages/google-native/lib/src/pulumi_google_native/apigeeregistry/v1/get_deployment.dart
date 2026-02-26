import 'package:pulumi/pulumi.dart';
import 'get_deployment_args.dart';
import 'get_deployment_result.dart';

/// Returns a specified deployment.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getDeployment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}
