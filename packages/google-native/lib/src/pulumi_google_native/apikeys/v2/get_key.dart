import 'package:pulumi/pulumi.dart';
import 'get_key_args.dart';
import 'get_key_result.dart';

/// Gets the metadata for an API key. The key string of the API key isn't included in the response. NOTE: Key is a global resource; hence the only supported value for location is `global`.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apikeys/v2:getKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}
