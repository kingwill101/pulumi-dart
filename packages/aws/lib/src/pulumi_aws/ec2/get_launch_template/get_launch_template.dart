import 'package:pulumi/pulumi.dart';
import 'get_launch_template_args.dart';
import 'get_launch_template_result.dart';

/// Provides information about a Launch Template.
///
/// ## Example Usage
///
///
///
/// ### Filter
Future<GetLaunchTemplateResult> getLaunchTemplate(
  GetLaunchTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLaunchTemplate:getLaunchTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLaunchTemplateResult.fromMap(result);
}
