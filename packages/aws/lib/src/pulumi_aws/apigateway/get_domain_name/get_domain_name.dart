import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_name_args.dart';
import 'get_domain_name_result.dart';

/// Use this data source to get the custom domain name for use with AWS API Gateway.
Future<GetDomainNameResult> getDomainName(
  GetDomainNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getDomainName:getDomainName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainNameResult.fromMap(result);
}
