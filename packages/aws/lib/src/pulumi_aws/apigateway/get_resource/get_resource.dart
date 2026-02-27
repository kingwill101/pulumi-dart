import 'package:pulumi/pulumi.dart';
import 'get_resource_args.dart';
import 'get_resource_result.dart';

/// Use this data source to get the id of a Resource in API Gateway.
/// To fetch the Resource, you must provide the REST API id as well as the full path.
Future<GetResourceResult> getResource(
  GetResourceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getResource:getResource',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourceResult.fromMap(result);
}
