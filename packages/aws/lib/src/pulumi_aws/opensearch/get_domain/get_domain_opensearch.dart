import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_opensearch_args.dart';
import 'get_domain_opensearch_result.dart';

/// Use this data source to get information about an OpenSearch Domain
Future<GetDomainOpensearchResult> getDomainOpensearch(
  GetDomainOpensearchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainOpensearchResult.fromMap(result);
}
