import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_acls_args.dart';
import 'get_network_acls_result.dart';

/// ## Example Usage
///
/// The following shows outputting all network ACL ids in a vpc.
///
///
///
/// The following example retrieves a list of all network ACL ids in a VPC with a custom
/// tag of `Tier` set to a value of "Private".
///
///
///
/// The following example retrieves a network ACL id in a VPC which associated
/// with specific subnet.
Future<GetNetworkAclsResult> getNetworkAcls(
  GetNetworkAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkAcls:getNetworkAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAclsResult.fromMap(result);
}
