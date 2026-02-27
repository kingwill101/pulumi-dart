import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peered_dns_domain_args.dart';
import 'get_peered_dns_domain_result.dart';

Future<GetPeeredDnsDomainResult> getPeeredDnsDomain(
  GetPeeredDnsDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:servicenetworking/getPeeredDnsDomain:getPeeredDnsDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeeredDnsDomainResult.fromMap(result);
}
