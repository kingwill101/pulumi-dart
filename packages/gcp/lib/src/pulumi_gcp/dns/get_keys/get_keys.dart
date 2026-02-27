import 'package:pulumi/pulumi.dart';
import 'get_keys_args.dart';
import 'get_keys_result.dart';

/// Get the DNSKEY and DS records of DNSSEC-signed managed zones.
///
/// For more information see the
/// [official documentation](https://cloud.google.com/dns/docs/dnskeys/)
/// and [API](https://cloud.google.com/dns/docs/reference/v1/dnsKeys).
///
/// > A gcp.dns.ManagedZone resource must have DNSSEC enabled in order
/// to contain any DNSKEYs. Queries to managed zones without this setting
/// enabled will result in a 404 error as the collection of DNSKEYs does
/// not exist in the DNS API.
Future<GetKeysResult> getKeys(
  GetKeysArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dns/getKeys:getKeys',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeysResult.fromMap(result);
}
