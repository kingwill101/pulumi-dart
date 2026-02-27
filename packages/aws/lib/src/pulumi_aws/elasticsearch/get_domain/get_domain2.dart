import 'package:pulumi/pulumi.dart';
import 'get_domain_args2.dart';
import 'get_domain_result2.dart';

/// Use this data source to get information about an Elasticsearch Domain
Future<GetDomainResult2> getDomain2(
  GetDomainArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:elasticsearch/getDomain:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult2.fromMap(result);
}
