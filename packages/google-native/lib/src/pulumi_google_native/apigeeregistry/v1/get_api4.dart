import 'package:pulumi/pulumi.dart' hide Config;
import 'get_api_args4.dart';
import 'get_api_result4.dart';

/// Returns a specified API.
Future<GetApiResult4> getApi4(
  GetApiArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigeeregistry/v1:getApi',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetApiResult4.fromMap(result);
}
