import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environments_args.dart';
import 'get_environments_result.dart';

/// Provides access to all Environments for an AppConfig Application. This will allow you to pass Environment IDs to another
/// resource.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetEnvironmentsResult> getEnvironments(
  GetEnvironmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getEnvironments:getEnvironments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentsResult.fromMap(result);
}
