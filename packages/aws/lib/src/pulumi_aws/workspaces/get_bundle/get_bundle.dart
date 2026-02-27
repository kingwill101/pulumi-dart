import 'package:pulumi/pulumi.dart' as pulumi;
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
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:workspaces/getBundle:getBundle',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBundleResult.fromMap(result);
}
