import 'package:pulumi/pulumi.dart';
import 'get_domain_name_args.dart';
import 'get_domain_name_result.dart';

/// Use this data source to get the custom domain name for use with AWS API Gateway.
Future<GetDomainNameResult> getDomainName(
  GetDomainNameArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getDomainName:getDomainName',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDomainNameResult.fromMap(result);
}
