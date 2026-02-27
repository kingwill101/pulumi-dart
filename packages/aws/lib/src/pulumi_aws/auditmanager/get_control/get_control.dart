import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_args.dart';
import 'get_control_result.dart';

/// Data source for managing an AWS Audit Manager Control.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Framework Resource
Future<GetControlResult> getControl(
  GetControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:auditmanager/getControl:getControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlResult.fromMap(result);
}
