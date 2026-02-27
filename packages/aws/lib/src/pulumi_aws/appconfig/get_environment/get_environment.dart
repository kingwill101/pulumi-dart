import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_args.dart';
import 'get_environment_result.dart';

/// Provides access to an AppConfig Environment.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getEnvironment:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}
