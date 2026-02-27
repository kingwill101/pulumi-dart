import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_controls_args.dart';
import 'get_controls_result.dart';

/// List of Control Tower controls applied to an OU.
Future<GetControlsResult> getControls(
  GetControlsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:controltower/getControls:getControls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlsResult.fromMap(result);
}
