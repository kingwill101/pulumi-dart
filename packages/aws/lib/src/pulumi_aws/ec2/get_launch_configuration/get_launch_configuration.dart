import 'package:pulumi/pulumi.dart';
import 'get_launch_configuration_args.dart';
import 'get_launch_configuration_result.dart';

/// Provides information about a Launch Configuration.
Future<GetLaunchConfigurationResult> getLaunchConfiguration(
  GetLaunchConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLaunchConfiguration:getLaunchConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLaunchConfigurationResult.fromMap(result);
}
