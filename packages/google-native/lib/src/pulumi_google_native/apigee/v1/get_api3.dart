import 'package:pulumi/pulumi.dart' hide Config;
import 'get_api_args3.dart';
import 'get_api_result3.dart';

/// Gets an API proxy including a list of existing revisions.
Future<GetApiResult3> getApi3(
  GetApiArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApi',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiResult3.fromMap(result);
}
