import 'package:pulumi/pulumi.dart';
import 'get_domain_args3.dart';
import 'get_domain_result3.dart';

/// Use this data source to get information about an OpenSearch Domain
Future<GetDomainResult3> getDomain3(
  GetDomainArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getDomain:getDomain',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainResult3.fromMap(result);
}
