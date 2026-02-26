import 'package:pulumi/pulumi.dart';
import 'get_peered_dns_domain_args.dart';
import 'get_peered_dns_domain_result.dart';

Future<GetPeeredDnsDomainResult> getPeeredDnsDomain(
  GetPeeredDnsDomainArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicenetworking/getPeeredDnsDomain:getPeeredDnsDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPeeredDnsDomainResult.fromMap(result);
}
