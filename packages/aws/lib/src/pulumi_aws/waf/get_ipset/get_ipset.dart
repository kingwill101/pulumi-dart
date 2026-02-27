import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipset_args.dart';
import 'get_ipset_result.dart';

/// `aws.waf.IpSet` Retrieves a WAF IP Set Resource Id.
Future<GetIpsetResult> getIpset(
  GetIpsetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:waf/getIpset:getIpset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpsetResult.fromMap(result);
}
