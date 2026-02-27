import 'package:pulumi/pulumi.dart' hide Config;
import 'get_history_args.dart';
import 'get_history_result.dart';

/// Gets a History. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the History does not exist
Future<GetHistoryResult> getHistory(
  GetHistoryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getHistory',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetHistoryResult.fromMap(result);
}
