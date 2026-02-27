import 'package:pulumi/pulumi.dart';
import 'get_key_args.dart';
import 'get_key_result.dart';

/// Use this data source to get the name and value of a pre-existing API Key, for
/// example to supply credentials for a dependency microservice.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:apigateway/getKey:getKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}
