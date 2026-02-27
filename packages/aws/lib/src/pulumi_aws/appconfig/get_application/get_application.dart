import 'package:pulumi/pulumi.dart';
import 'get_application_args.dart';
import 'get_application_result.dart';

/// Provides details about an AWS AppConfig Application.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetApplicationResult> getApplication(
  GetApplicationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult.fromMap(result);
}
