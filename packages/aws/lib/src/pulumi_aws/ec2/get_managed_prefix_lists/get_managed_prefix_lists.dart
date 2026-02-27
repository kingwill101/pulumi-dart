import 'package:pulumi/pulumi.dart';
import 'get_managed_prefix_lists_args.dart';
import 'get_managed_prefix_lists_result.dart';

/// This resource can be useful for getting back a list of managed prefix list ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following returns all managed prefix lists filtered by tags
Future<GetManagedPrefixListsResult> getManagedPrefixLists(
  GetManagedPrefixListsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getManagedPrefixLists:getManagedPrefixLists',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedPrefixListsResult.fromMap(result);
}
