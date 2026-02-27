import 'package:pulumi/pulumi.dart';
import 'get_bundle_args.dart';
import 'get_bundle_result.dart';

/// Retrieve information about an AWS WorkSpaces bundle.
///
/// ## Example Usage
///
/// ### By ID
///
///
///
/// ### By Owner & Name
Future<GetBundleResult> getBundle(
  GetBundleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getBundle:getBundle',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBundleResult.fromMap(result);
}
