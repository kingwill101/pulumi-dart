import 'package:pulumi/pulumi.dart';
import 'get_patch_baseline_args.dart';
import 'get_patch_baseline_result.dart';

/// Provides an SSM Patch Baseline data source. Useful if you wish to reuse the default baselines provided.
///
/// ## Example Usage
///
/// To retrieve a baseline provided by AWS:
///
///
///
/// To retrieve a baseline on your account:
Future<GetPatchBaselineResult> getPatchBaseline(
  GetPatchBaselineArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getPatchBaseline:getPatchBaseline',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPatchBaselineResult.fromMap(result);
}
