import 'package:pulumi/pulumi.dart';
import 'get_environment_args.dart';
import 'get_environment_result.dart';

/// Provides access to an AppConfig Environment.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getEnvironment:getEnvironment',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}
