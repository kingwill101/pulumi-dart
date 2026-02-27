import 'package:pulumi/pulumi.dart';
import 'get_application_providers_args.dart';
import 'get_application_providers_result.dart';

/// Data source for managing AWS SSO Admin Application Providers.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetApplicationProvidersResult> getApplicationProviders(
  GetApplicationProvidersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplicationProviders:getApplicationProviders',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationProvidersResult.fromMap(result);
}
