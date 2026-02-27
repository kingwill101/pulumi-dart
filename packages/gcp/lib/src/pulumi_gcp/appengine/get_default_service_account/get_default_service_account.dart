import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_default_service_account_args.dart';
import 'get_default_service_account_result.dart';

/// Use this data source to retrieve the default App Engine service account for the specified project.
Future<GetDefaultServiceAccountResult> getDefaultServiceAccount(
  GetDefaultServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:appengine/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountResult.fromMap(result);
}
