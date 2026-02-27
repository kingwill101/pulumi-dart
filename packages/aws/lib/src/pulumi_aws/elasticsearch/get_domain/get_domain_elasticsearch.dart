import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_elasticsearch_args.dart';
import 'get_domain_elasticsearch_result.dart';

/// Use this data source to get information about an Elasticsearch Domain
Future<GetDomainElasticsearchResult> getDomainElasticsearch(
  GetDomainElasticsearchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticsearch/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainElasticsearchResult.fromMap(result);
}
