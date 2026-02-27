import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_patch_baselines_args.dart';
import 'get_patch_baselines_result.dart';

/// Data source for retrieving AWS SSM (Systems Manager) Patch Baselines.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### With Filters
Future<GetPatchBaselinesResult> getPatchBaselines(
  GetPatchBaselinesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getPatchBaselines:getPatchBaselines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPatchBaselinesResult.fromMap(result);
}
