import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_search_application_args.dart';
import 'get_search_application_result.dart';

/// Gets the specified search application. **Note:** This API requires an admin account to execute.
Future<GetSearchApplicationResult> getSearchApplication(
  GetSearchApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudsearch/v1:getSearchApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSearchApplicationResult.fromMap(result);
}
