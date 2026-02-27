import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prefix_list_args.dart';
import 'get_prefix_list_result.dart';

/// `aws.ec2.getPrefixList` provides details about a specific AWS prefix list (PL)
/// in the current region.
///
/// This can be used both to validate a prefix list given in a variable
/// and to obtain the CIDR blocks (IP address ranges) for the associated
/// AWS service. The latter may be useful e.g., for adding network ACL
/// rules.
///
/// The aws.ec2.ManagedPrefixList data source is normally more appropriate to use given it can return customer-managed prefix list info, as well as additional attributes.
///
/// ## Example Usage
///
///
///
/// ### Filter
Future<GetPrefixListResult> getPrefixList(
  GetPrefixListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getPrefixList:getPrefixList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrefixListResult.fromMap(result);
}
