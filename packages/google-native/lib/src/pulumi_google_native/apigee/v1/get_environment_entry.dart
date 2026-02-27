import 'package:pulumi/pulumi.dart' hide Config;
import 'get_environment_entry_args.dart';
import 'get_environment_entry_result.dart';

/// Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
Future<GetEnvironmentEntryResult> getEnvironmentEntry(
  GetEnvironmentEntryArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironmentEntry',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentEntryResult.fromMap(result);
}
