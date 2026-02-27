import 'package:pulumi/pulumi.dart';
import 'get_application_args4.dart';
import 'get_application_result4.dart';

/// Data source for managing an AWS SSO Admin Application.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetApplicationResult4> getApplication4(
  GetApplicationArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssoadmin/getApplication:getApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApplicationResult4.fromMap(result);
}
