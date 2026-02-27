import 'package:pulumi/pulumi.dart';
import 'get_static_ips_args.dart';
import 'get_static_ips_result.dart';

/// Returns the list of IP addresses that Datastream connects from. For more information see
/// the [official documentation](https://cloud.google.com/datastream/docs/ip-allowlists-and-regions).
Future<GetStaticIpsResult> getStaticIps(
  GetStaticIpsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datastream/getStaticIps:getStaticIps',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetStaticIpsResult.fromMap(result);
}
