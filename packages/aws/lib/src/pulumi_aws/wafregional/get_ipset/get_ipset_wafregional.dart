import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ipset_wafregional_args.dart';
import 'get_ipset_wafregional_result.dart';

/// `aws.wafregional.IpSet` Retrieves a WAF Regional IP Set Resource Id.
Future<GetIpsetWafregionalResult> getIpsetWafregional(
  GetIpsetWafregionalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getIpset:getIpset',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpsetWafregionalResult.fromMap(result);
}
