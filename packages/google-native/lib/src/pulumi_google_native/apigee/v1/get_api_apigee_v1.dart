import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_apigee_v1_args.dart';
import 'get_api_apigee_v1_result.dart';

/// Gets an API proxy including a list of existing revisions.
Future<GetApiApigeeV1Result> getApiApigeeV1(
  GetApiApigeeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiApigeeV1Result.fromMap(result);
}
