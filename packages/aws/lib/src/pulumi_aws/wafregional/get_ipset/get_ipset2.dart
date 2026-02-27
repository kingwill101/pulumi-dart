import 'package:pulumi/pulumi.dart';
import 'get_ipset_args2.dart';
import 'get_ipset_result2.dart';

/// `aws.wafregional.IpSet` Retrieves a WAF Regional IP Set Resource Id.
Future<GetIpsetResult2> getIpset2(
  GetIpsetArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:wafregional/getIpset:getIpset',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetIpsetResult2.fromMap(result);
}
