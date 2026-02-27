import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLaunchTemplate:getLaunchTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLaunchTemplateResult.fromMap(result);
}
