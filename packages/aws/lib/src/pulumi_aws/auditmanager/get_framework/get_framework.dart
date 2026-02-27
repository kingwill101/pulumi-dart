import 'package:pulumi/pulumi.dart';
import 'get_framework_args.dart';
import 'get_framework_result.dart';

/// Data source for managing an AWS Audit Manager Framework.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetFrameworkResult> getFramework(
  GetFrameworkArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:auditmanager/getFramework:getFramework',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFrameworkResult.fromMap(result);
}
