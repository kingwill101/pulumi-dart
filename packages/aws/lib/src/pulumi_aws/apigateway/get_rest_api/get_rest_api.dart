import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rest_api_args.dart';
import 'get_rest_api_result.dart';

/// Use this data source to get the id and root_resource_id of a REST API in
/// API Gateway. To fetch the REST API you must provide a name to match against.
/// As there is no unique name constraint on REST APIs this data source will
/// error if there is more than one match.
Future<GetRestApiResult> getRestApi(
  GetRestApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getRestApi:getRestApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestApiResult.fromMap(result);
}
