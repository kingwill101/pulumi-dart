import 'package:pulumi/pulumi.dart';
import 'get_dev_environment_args.dart';
import 'get_dev_environment_result.dart';

/// Data source for managing an AWS CodeCatalyst Dev Environment.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetDevEnvironmentResult> getDevEnvironment(
  GetDevEnvironmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:codecatalyst/getDevEnvironment:getDevEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDevEnvironmentResult.fromMap(result);
}
