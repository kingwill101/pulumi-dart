import 'package:pulumi/pulumi.dart';
import 'get_search_application_args.dart';
import 'get_search_application_result.dart';

/// Gets the specified search application. **Note:** This API requires an admin account to execute.
Future<GetSearchApplicationResult> getSearchApplication(
  GetSearchApplicationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudsearch/v1:getSearchApplication',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSearchApplicationResult.fromMap(result);
}
