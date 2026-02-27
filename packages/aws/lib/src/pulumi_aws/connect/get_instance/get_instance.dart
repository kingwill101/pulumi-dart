import 'package:pulumi/pulumi.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';

/// Provides details about a specific Amazon Connect Instance.
///
/// ## Example Usage
///
/// By instance_alias
///
///
///
/// By instance_id
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getInstance:getInstance',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}
