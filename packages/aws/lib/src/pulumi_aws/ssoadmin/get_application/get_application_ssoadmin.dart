import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_ssoadmin_args.dart';
import 'get_application_ssoadmin_result.dart';

/// Data source for managing an AWS SSO Admin Application.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetApplicationSsoadminResult> getApplicationSsoadmin(
  GetApplicationSsoadminArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplication:getApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationSsoadminResult.fromMap(result);
}
