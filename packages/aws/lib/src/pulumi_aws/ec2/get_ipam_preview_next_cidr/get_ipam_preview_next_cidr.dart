import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipam_preview_next_cidr_args.dart';
import 'get_ipam_preview_next_cidr_result.dart';

/// Previews a CIDR from an IPAM address pool. Only works for private IPv4.
///
/// > **NOTE:** This functionality is also encapsulated in a resource sharing the same name. The data source can be used when you need to use the cidr in a calculation of the same Root module, `count` for example. However, once a cidr range has been allocated that was previewed, the next refresh will find a **new** cidr and may force new resources downstream. Make sure to use `ignore_changes` if this is undesirable.
///
/// ## Example Usage
///
/// Basic usage:
Future<GetIpamPreviewNextCidrResult> getIpamPreviewNextCidr(
  GetIpamPreviewNextCidrArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getIpamPreviewNextCidr:getIpamPreviewNextCidr',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamPreviewNextCidrResult.fromMap(result);
}
