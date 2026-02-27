import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_prefix_list_args.dart';
import 'get_managed_prefix_list_result.dart';

/// `aws.ec2.ManagedPrefixList` provides details about a specific AWS prefix list or
/// customer-managed prefix list in the current region.
///
/// ## Example Usage
///
/// ### Find the regional DynamoDB prefix list
///
///
///
/// ### Find a managed prefix list using filters
Future<GetManagedPrefixListResult> getManagedPrefixList(
  GetManagedPrefixListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getManagedPrefixList:getManagedPrefixList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedPrefixListResult.fromMap(result);
}
